import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

/// A wrapper class that contains details about each font in the [FontPicker].
///
/// Returned from the [onFontChanged] method of the [FontPicker].
///
/// Use the [toTextStyle] method to style any [Text] with the particular font.
class PickerFont {
  final String fontFamily;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  List<String> variants;
  List<String> subsets;
  String category;
  bool isRecent;

  PickerFont({
    required this.fontFamily,
    this.fontWeight = FontWeight.w400,
    this.fontStyle = FontStyle.normal,
    this.isRecent = false,
  })  : variants = parseVariants(fontFamily),
        subsets = [...?googleFontsDetails[fontFamily]?["subsets"]?.split(",")],
        category = googleFontsDetails[fontFamily]?["category"] ?? 'sans-serif';

  static List<String> parseVariants(final String fontFamily) {
    final variants = [
      ...googleFontsDetails[fontFamily]?["variants"]?.split(",") ?? const ["400"]
    ];
    if (variants.any((final v) => v.contains("i"))) {
      variants.add("italic");
    }
    variants.removeWhere((final v) => v.endsWith("i"));
    return variants;
  }

  /// Constructs a [PickerFont] from a font spec description (a shorthand string that can describe a font), e.g. "Roboto:700i".
  factory PickerFont.fromFontSpec(final String fontSpec) {
    final fontSpecSplit = fontSpec.split(":");
    if (fontSpecSplit.length == 1) {
      return PickerFont(fontFamily: fontSpecSplit[0]);
    } else {
      return PickerFont(
          fontFamily: fontSpecSplit[0],
          fontWeight:
              fontWeightValues[fontSpecSplit[1].replaceAll("i", "")] ?? FontWeight.w400,
          fontStyle:
              fontSpecSplit[1].contains("i") ? FontStyle.italic : FontStyle.normal);
    }
  }

  /// Converts a [PickerFont] to a font spec description, a shorthand string that can describe a font.
  /// Examples of font specs: "Roboto:400", "Merriweather:700i", "Archivo Narrow:200i".
  String toFontSpec() {
    final fontWeightString = fontWeight.toString();
    final fontSpec =
        "$fontFamily:${fontWeightString.substring(fontWeightString.length - 3)}";
    return fontStyle == FontStyle.italic ? "${fontSpec}i" : fontSpec;
  }

  /// Provides a [TextStyle] object that can be used to style any [Text] with the selected Google font.
  TextStyle toTextStyle() {
    return GoogleFonts.getFont(fontFamily, fontWeight: fontWeight, fontStyle: fontStyle);
  }
}
