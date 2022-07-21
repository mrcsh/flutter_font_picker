library flutter_font_picker;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';
import '../models/picker_font.dart';
import 'font_categories.dart';
import 'font_language.dart';
import 'font_preview.dart';
import 'font_search.dart';

class FontPickerUI extends StatefulWidget {
  final List<String> googleFonts;
  final ValueChanged<PickerFont> onFontChanged;
  final String initialFontFamily;
  final bool showFontInfo;
  final bool showInDialog;
  final int recentsCount;

  const FontPickerUI({
    final super.key,
    this.googleFonts = googleFontsList,
    this.showFontInfo = true,
    this.showInDialog = false,
    this.recentsCount = 3,
    required this.onFontChanged,
    required this.initialFontFamily,
  });

  @override
  _FontPickerUIState createState() => _FontPickerUIState();
}

class _FontPickerUIState extends State<FontPickerUI> {
  List<PickerFont> _shownFonts = const [];
  List<PickerFont> _allFonts = const [];
  List<PickerFont> _recentFonts = const [];
  String _selectedFontFamily = "Roboto";
  FontWeight _selectedFontWeight = FontWeight.w400;
  FontStyle _selectedFontStyle = FontStyle.normal;
  String _selectedFontLanguage = 'all';
  ThemeData? _theme;
  ThemeData get theme => _theme ?? Theme.of(context);
  Size _size = const Size(300, 300);

  @override
  void initState() {
    _prepareShownFonts();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _theme = Theme.of(context);
    _size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  Future _prepareShownFonts() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final recents = [...?prefs.getStringList(prefsRecentsKey)];
    final supportedFonts = GoogleFonts.asMap()
        .keys
        .where((final e) => widget.googleFonts.contains(e))
        .toList();
    setState(
      () {
        _recentFonts = [
          ...recents.reversed.map(
              (final fontFamily) => PickerFont(fontFamily: fontFamily, isRecent: true))
        ];
        _allFonts = [
          ..._recentFonts,
          ...supportedFonts
              .where((final fontFamily) => !recents.contains(fontFamily))
              .map((final fontFamily) => PickerFont(fontFamily: fontFamily)),
        ];

        _shownFonts = _allFonts;
        final String initial;
        if (!supportedFonts.contains(widget.initialFontFamily)) {
          initial = 'Roboto';
        } else {
          initial = widget.initialFontFamily;
        }
        _selectedFontFamily = initial;
      },
    );
  }

  void changeFont(final PickerFont selectedFont) {
    widget.onFontChanged(selectedFont);
  }

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      height: widget.showInDialog ? _size.height * .833333333 : null,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            child: widget.showInDialog
                ? ListView(
                    shrinkWrap: true,
                    children: [
                      FontSearch(
                        onSearchTextChanged: onSearchTextChanged,
                      ),
                      FontLanguage(
                        onFontLanguageSelected: onFontLanguageSelected,
                        selectedFontLanguage: _selectedFontLanguage,
                      ),
                      const SizedBox(height: 12.0)
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: FontSearch(
                          onSearchTextChanged: onSearchTextChanged,
                        ),
                      ),
                      Expanded(
                        child: FontLanguage(
                          onFontLanguageSelected: onFontLanguageSelected,
                          selectedFontLanguage: _selectedFontLanguage,
                        ),
                      )
                    ],
                  ),
          ),
          FontCategories(onFontCategoriesUpdated: onFontCategoriesUpdated),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FontPreview(
              fontFamily: _selectedFontFamily,
              fontWeight: _selectedFontWeight,
              fontStyle: _selectedFontStyle,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _shownFonts.length,
              itemBuilder: (final context, final index) {
                final PickerFont f = _shownFonts[index];
                final bool isBeingSelected = _selectedFontFamily == f.fontFamily;
                final String stylesString = widget.showFontInfo
                    ? f.variants.length > 1
                        ? "  ${f.category}, ${f.variants.length} styles"
                        : "  ${f.category}"
                    : "";
                return _FontTile(
                  isRecent: _recentFonts.contains(f),
                  selected: isBeingSelected,
                  onSelect: (final fontFamily) {
                    addToRecents(fontFamily);
                    changeFont(
                      PickerFont(
                        fontFamily: fontFamily,
                        fontWeight: _selectedFontWeight,
                        fontStyle: _selectedFontStyle,
                      ),
                    );
                    Navigator.of(context).pop();
                  },
                  selectedFontStyle: _selectedFontStyle,
                  selectedFontWeight: _selectedFontWeight,
                  font: f,
                  stylesString: stylesString,
                  onStyleChange: (final style) =>
                      setState(() => _selectedFontStyle = style),
                  onWeightChange: (final weight) =>
                      setState(() => _selectedFontWeight = weight),
                  onTap: () {
                    setState(
                      () {
                        if (!isBeingSelected) {
                          _selectedFontFamily = f.fontFamily;
                          _selectedFontWeight = FontWeight.w400;
                          _selectedFontStyle = FontStyle.normal;
                        } else {
                          _selectedFontFamily = 'Roboto';
                        }
                      },
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> addToRecents(final String fontFamily) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var recents = prefs.getStringList(prefsRecentsKey);
    if (recents != null && !recents.contains(fontFamily)) {
      if (recents.length == widget.recentsCount) {
        recents = recents.sublist(1)..add(fontFamily);
      } else {
        recents.add(fontFamily);
      }
      await prefs.setStringList(prefsRecentsKey, recents);
    } else {
      await prefs.setStringList(prefsRecentsKey, [fontFamily]);
    }
  }

  void onFontLanguageSelected(final String? newValue) {
    if (newValue == null) {
      return;
    }
    setState(
      () {
        _selectedFontLanguage = newValue;
        if (newValue == 'all') {
          _shownFonts = _allFonts;
        } else {
          _shownFonts = [..._allFonts.where((final f) => f.subsets.contains(newValue))];
        }
      },
    );
  }

  void onFontCategoriesUpdated(final List<String> selectedFontCategories) {
    setState(
      () => _shownFonts = [
        ..._allFonts.where(
          (final f) => selectedFontCategories.contains(f.category),
        ),
      ],
    );
  }

  void onSearchTextChanged(final String text) {
    if (text.isEmpty) {
      setState(() => _shownFonts = _allFonts);
    } else {
      setState(
        () => _shownFonts = [
          ..._allFonts.where(
            (final f) => f.fontFamily.toLowerCase().contains(text.toLowerCase()),
          ),
        ],
      );
    }
  }
}

class _FontTile extends StatelessWidget {
  final VoidCallback? onTap;
  final bool selected;
  final PickerFont font;
  final String stylesString;
  final FontStyle selectedFontStyle;
  final FontWeight selectedFontWeight;
  final void Function(FontWeight) onWeightChange;
  final void Function(FontStyle) onStyleChange;
  final void Function(String) onSelect;
  final bool isRecent;
  const _FontTile({
    final Key? key,
    this.onTap,
    this.selected = false,
    required this.font,
    required this.stylesString,
    required this.selectedFontStyle,
    required this.selectedFontWeight,
    required this.onSelect,
    required this.onWeightChange,
    required this.onStyleChange,
    required this.isRecent,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          color: selected ? theme.selectedRowColor : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: RichText(
                      text: TextSpan(
                        text: "${font.fontFamily}\n",
                        style: TextStyle(
                                fontFamily:
                                    GoogleFonts.getFont(font.fontFamily).fontFamily)
                            .copyWith(color: DefaultTextStyle.of(context).style.color),
                        children: [
                          TextSpan(
                              text: stylesString,
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 11.0,
                                  color: Colors.grey,
                                  fontFamily:
                                      DefaultTextStyle.of(context).style.fontFamily))
                        ],
                      ),
                    ),
                  ),
                  if (selected)
                    TextButton(
                      child: const Text(
                        'SELECT',
                      ),
                      onPressed: () => onSelect(font.fontFamily),
                    )
                  else if (isRecent)
                    const Icon(
                      Icons.history,
                      size: 18.0,
                    ),
                ],
              ),
              if (selected)
                Wrap(
                  children: [
                    ...font.variants.map(
                      (final variant) {
                        bool isSelectedVariant;
                        if (variant == "italic" &&
                            selectedFontStyle == FontStyle.italic) {
                          isSelectedVariant = true;
                        } else {
                          isSelectedVariant =
                              selectedFontWeight.toString().contains(variant);
                        }
                        return SizedBox(
                          height: 30.0,
                          width: 60.0,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor:
                                      isSelectedVariant ? theme.primaryColor : null,
                                  textStyle: const TextStyle(
                                    fontSize: 10.0,
                                  ),
                                  shape: const StadiumBorder()),
                              child: Text(
                                variant,
                                style: TextStyle(
                                    fontStyle: variant == "italic"
                                        ? FontStyle.italic
                                        : FontStyle.normal,
                                    color: isSelectedVariant
                                        ? theme.colorScheme.onPrimary
                                        : theme.colorScheme.onPrimary == Colors.white
                                            ? null
                                            : theme.colorScheme.onPrimary),
                              ),
                              onPressed: () {
                                if (variant == "italic") {
                                  onStyleChange(selectedFontStyle == FontStyle.italic
                                      ? FontStyle.normal
                                      : FontStyle.italic);
                                } else {
                                  final w = fontWeightValues[variant];
                                  if (w != null) {
                                    onWeightChange(w);
                                  }
                                }
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
