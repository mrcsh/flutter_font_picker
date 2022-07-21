import 'package:flutter/material.dart';

import '../constants/constants.dart';

class FontLanguage extends StatefulWidget {
  final ValueChanged<String?> onFontLanguageSelected;
  final String selectedFontLanguage;
  const FontLanguage({
    final super.key,
    required this.selectedFontLanguage,
    required this.onFontLanguageSelected,
  });

  @override
  _FontLanguageState createState() => _FontLanguageState();
}

class _FontLanguageState extends State<FontLanguage> {
  @override
  Widget build(final BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: widget.selectedFontLanguage,
        isDense: true,
        style: TextStyle(fontSize: 12.0, color: DefaultTextStyle.of(context).style.color),
        icon: const Icon(Icons.arrow_drop_down_sharp),
        onChanged: widget.onFontLanguageSelected,
        items: [
          ...googleFontLanguages.keys.map<DropdownMenuItem<String>>(
            (final String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(googleFontLanguages[value]!),
              );
            },
          )
        ],
      ),
    );
  }
}
