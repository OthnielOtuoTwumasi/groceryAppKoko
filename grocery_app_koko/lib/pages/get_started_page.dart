import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_koko/components/custom_button.dart';

import '../theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 20, 5, 15),
            child: Image.asset(
              "assets/images/authImage.png",
              width: width * 0.6,
              height: height * 0.45,
            ),
          ),
          Padding(
            padding: Apptheme.paddingSymmetricHorizontalMedium,
            child: Column(
              children: [
                Text(
                  "Get fresh groceries at your doorstep",
                  style: GoogleFonts.notoSerif(
                      fontSize: 33, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Eat right the easy way",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/homePage");
              },
              buttonText: "Get Started",
              backgroundColor: Apptheme.colorOliveGreen,
              textColor: Apptheme.colorWhite,
              textFontSize: Apptheme.fontSizeGeneric,
            ),
          ),
        ],
      ),
    );
  }
}
