import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String titleText;
  final String subtitleText;
  final String additionalText;

  const ItemCard({
    required this.image,
    required this.titleText,
    required this.subtitleText,
    this.additionalText = "",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Apptheme.color3,
        borderRadius: BorderRadius.all(Radius.circular(Apptheme.borderRadiusSmall8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
             child: Padding(
               padding: Apptheme.paddingAllSmall,
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(Radius.circular(5)),
                 child: Image.asset(
                   image,
                   fit: BoxFit.cover, // Ensure the image fits within its container
                 ),
               ),
             ),
           ),
          Padding(
           padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Text(
              titleText,
              style: GoogleFonts.plusJakartaSans(
                color: Apptheme.color2,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Text(
              subtitleText,
              style: GoogleFonts.plusJakartaSans(
                color: Apptheme.color4,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,0,0,5),
            child: Text(
              additionalText,
              style: GoogleFonts.plusJakartaSans(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
