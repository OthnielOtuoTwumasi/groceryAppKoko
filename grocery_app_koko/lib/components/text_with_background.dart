import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';
class TextWithBackground extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;

  const TextWithBackground({
    required this.text,
    required this.color,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Apptheme.paddingAllVerySmall,
      color: color,
      child: Text(
        text,
        style: GoogleFonts.plusJakartaSans(
            color: textColor,
            fontSize: Apptheme.fontSizeAlmostLarge,
            fontWeight: Apptheme.fontWeight500),
      ),
    );
  }
}