import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../theme.dart';

class CustomGoogleButton extends StatelessWidget {
  final Function()? onPressed;

  final BorderSide? borderSide;
  final EdgeInsetsGeometry padding;

  const CustomGoogleButton({
    required this.onPressed,
    this.borderSide = const BorderSide(color: Colors.transparent, width: 0),
    this.padding = Apptheme.paddingAllDefault,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Apptheme.colorWhite,
            side: borderSide,
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(Apptheme.borderRadiusButtonSmall))),
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Brand(Brands.google),
              Text(
               "Continue with Google",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(  color: Apptheme.colorBlack,
                  fontSize: Apptheme.fontSizeAlmostLarge,
                ),
              ),
            ],
          ),
        ));
  }
}
