import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';
import 'custom_button.dart';

class CustomAlertDialog extends StatelessWidget {
  final IconData? iconData;
  final String titleText;
  final String contentText;
  final Function()? onPressed;

  const CustomAlertDialog({
    this.iconData,
    required this.titleText,
    required this.contentText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Apptheme.color1,
      title: Column(
        children: [
          Icon(
            iconData,
            size: 50,
            color: Apptheme.color2,
          ),
          Text(
            titleText,
            style: Apptheme.headline1,
          )
        ],
      ),
      content: Text(
        contentText,
        style: GoogleFonts.roboto(fontSize: Apptheme.fontSizeGeneric),
        textAlign: TextAlign.center,
      ),
      actions: [
        Center(
          child: CustomButton(
            onPressed: onPressed,
            buttonText: Apptheme.ok,
            backgroundColor: Apptheme.color2,
          ),
        )
      ],
    );
  }
}
