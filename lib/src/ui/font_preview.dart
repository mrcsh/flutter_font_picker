import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontPreview extends StatelessWidget {
  final String fontFamily;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  const FontPreview({
    final super.key,
    required this.fontFamily,
    required this.fontWeight,
    required this.fontStyle,
  });

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        textAlign: TextAlign.center,
        style: GoogleFonts.getFont(
          fontFamily,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
        ),
        decoration: InputDecoration(
          hintText: 'The quick brown fox jumped over the lazy dog',
          hintStyle: TextStyle(
            fontSize: 14.0,
            fontStyle: fontStyle,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
