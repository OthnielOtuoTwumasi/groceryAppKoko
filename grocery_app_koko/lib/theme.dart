import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  //------------------------------------------------
  //Strings
  static const String login = "Login";
  static const String welcomeBack = "Welcome Back!";
  static const String limitedOffer = "Limited Offer";
  static const String register = "Register";
  static const String categories = "Categories";
  static const String email = "Email";
  static const String username = "Username";
  static const String password = "Password";
  static const String submit = "Submit";
  static const String letUsHelpYou = "Let us help you";
  static const String signup = "Sign up";
  static const String fourInARoom = "Four in a room";
  static const String threeInARoom = "Three in a room";
  static const String twoInARoom = "Two in a room";
  static const String oneInARoom = "One in a room";
  static const String emailSent = "Email Sent";
  static const String createANewAccount ="CREATE A NEW ACCOUNT";
  static const String youAreMomentsAway = "You are moments away from greatness";
  static const String or = "OR";

  static const String hostels = "Hostels";
  static const String dontHaveAnAcccount = "Don't have an account?";
  static const String alreadyHaveAnAcccount = "Already have an account?";
  static const String thisIsJustATest =
      "This is just a test. When you tap on OK, you will be directed to the main page.";
  static const String signUpHere = "Signup Here";
  static const String loginHere = "Sign in Here";
  static const String logIntoYourAccount = "LOG IN TO \n YOUR ACCOUNT";
  static const String welcomeBackChamp = "Welcome Back Champ!";
  static const String oops = "Oops...";
  static const String search = "Search";
  static const String account = "Account";
  static const String findTheHostel =
      "Find the hostel you have been dreaming of";
  static const challengeTheNorm =
      "Challenge the norm. Showcase your brilliance!";
  static const String goodMorningGreeting = "Good Morning👋";
  static const String cart = "Cart";
  static const String error = "Error";
  static const String test = "Test";
  static const String uhoh = "Uh oh....";
  static const String ok = "OK";
  static const String home = "Home";
  static const String quizUpToStandOut = "Quiz Up to Stand Out!";
  static const String specialOffers = "Special Offers";
  static const String forgotPassword = "Forgot Password?";
  static const String resetPasswordHere = "Reset password here";
  static const String welcomeWelookForwardToGivingYouAGreatExperience =
      "Welcome we look forward to giving you a great experience";
  static const String tapToRead = "Tap to read our";
  static const String termsAndConditions = "Terms and Conditions";
  static const String youEnteredWrongEmailAndPassword =
      "You have entered a wrong email and password. Please try again";
  static const String weWillSendYouAnEmailWithTheLink =
      "We will send you an email with a link to reset your password, please enter the email associated with your account below.";

  //------------------------------------------------
  //fontWeight
  static const FontWeight fontWeightLogin = FontWeight.w600;
  static const FontWeight fontWeightWelcomeBack = FontWeight.w600;
  static const FontWeight fontWeight500 = FontWeight.w500;
  static const FontWeight fontWeightUsername = FontWeight.w600;

  //------------------------------------------------
  //fontSize
  static const double fontSizeLogin = 40;
  static const double fontSizeWelcomeBack = 20;
  static const double fontSizeTextField = 18;
  static const double fontSizeRichText = 15;
  static const double fontSizeGeneric = 16;
  static const double fontSizeLarge = 30;
  static const double fontSizeAlmostLarge = 25;
  static const double fontSize20 = 20;

  //------------------------------------------------
  //padding
  static const EdgeInsets paddingAllDefault = EdgeInsets.all(10);
  static const EdgeInsets forgotPasswordPadding = EdgeInsets.fromLTRB(0, 15, 15, 0);
  static const EdgeInsets paddingAllVerySmall = EdgeInsets.all(4);
  static const EdgeInsets paddingAllSmall = EdgeInsets.all(5);
  static const EdgeInsets paddingAllMedium = EdgeInsets.all(15);
  static const EdgeInsets paddingSymmetricHorizontalDefault =
      EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets paddingSymmetricHorizontalMedium =
      EdgeInsets.symmetric(horizontal: 15);
  static const paddingTermsAndConditionsText =
      EdgeInsets.fromLTRB(18, 12, 18, 25);
  static const paddingTermsAndConditionsTitle =
      EdgeInsets.fromLTRB(18, 25, 18, 0);
  static const paddingSearchButtonHome =
      EdgeInsets.symmetric(horizontal: 5, vertical: 25);
  static const EdgeInsets paddingSymmetricVerticalDefault =
      EdgeInsets.symmetric(vertical: 10);

  //------------------------------------------------
  //iconSize
  static const double iconSizeMedium = 30;

  //------------------------------------------------
  //sizedBox
  static const double sizedBoxHeightSmall = 10;
  static const double sizedBoxWidthSmall = 5;
  static const double sizedBoxWidth8 = 8;
  static const double sizedBoxHeight50 = 50;
  static const double sizedBoxHeight40 = 40;
  static const double sizedBoxHeight30 = 30;

  //------------------------------------------------
  //color
  static const Color color1 =  Color(0xffae462e);
  static const Color color2 = Color(0xFF2b2524);
  static const Color color3 = Color(0xFFe0c0af);
  static const Color color4 = Color(0xFFe3a977);

  static TextStyle headline1 = GoogleFonts.bebasNeue(
    color: color3,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static TextStyle? authInterfaceSubText(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final fontSize =
        mediaQuery.size.width * 0.04; // Adjust the percentage as needed

    return GoogleFonts.roboto(
        fontSize: fontSize, color: Apptheme.colorGreyExtraLight);
  }
  static TextStyle? forgotPasswordText(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final fontSize =
        mediaQuery.size.width * 0.08; // Adjust the percentage as needed

    return GoogleFonts.roboto(
        fontSize: fontSize, color: Apptheme.color4,fontWeight: Apptheme.fontWeight500);
  }


  static TextStyle headline2 = GoogleFonts.plusJakartaSans(
    color: color3,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle? authInterfaceHeadingText(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final fontSize = mediaQuery.size.width * 0.1;

    return GoogleFonts.bebasNeue(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: const Color(0xffe3a977),
      height: 1,
    );
  }

  static TextStyle? loginHeaderText(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final fontSize = mediaQuery.size.width * 0.15;

    return GoogleFonts.bebasNeue(
      fontSize: fontSize,
      color: Apptheme.color4,
      height: 0.9,
    );
  }

  static TextStyle? loginSubText(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final fontSize =
        mediaQuery.size.width * 0.05 ; // Adjust the percentage as needed

    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: Apptheme.color3,
    );
  }
  static TextStyle? textFieldLabelText(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final fontSize =
        mediaQuery.size.width * 0.05 ; // Adjust the percentage as needed

    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: Apptheme.color3,
    );
  }

  static TextStyle? forgottenPasswordLabelText(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final fontSize =
        mediaQuery.size.width * 0.04 ; // Adjust the percentage as needed

    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: Apptheme.color3,
    );
  }

  static TextStyle bodyText1 = GoogleFonts.bebasNeue(
    color: color3,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
  static TextStyle bodyText1Semibold = GoogleFonts.bebasNeue(
    color: color3,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bodyText3 = GoogleFonts.plusJakartaSans(
    color: color3,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bodyText3Semibold = GoogleFonts.plusJakartaSans(
    color: color3,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  // static TextStyle bodyText2Semibold = GoogleFonts.plusJakartaSans(
  //   color: color6,
  //   fontSize: 14,
  //   fontWeight: FontWeight.bold,
  // );
  //
  // static TextStyle bodyText2 = GoogleFonts.plusJakartaSans(
  //   color: color6,
  //   fontSize: 14,
  //   fontWeight: FontWeight.normal,
  // );

  static Color? colorGreyExtraLight = Colors.grey[100];
  static Color? colorGreyLight = Colors.grey[500];
  static const Color colorBorderSide = Colors.grey;
  static const Color colorBlue = Colors.blue;
  static Color colorBlack = Colors.black;
  static const Color colorWhite = Colors.white;
  static Color? colorGrey700 = Colors.grey[700];
  static Color colorOliveGreen = const Color(0xff273B09);

  //------------------------------------------------
  //borderRadius
  static const double borderRadiusSmall = 10;
  static const double borderRadiusSmall8 = 8;
  static const double borderRadiusButtonSmall = 10;

  //------------------------------------------------
  // iconData
  static const IconData iconDataHome = Icons.home;
  static const IconData iconDataSearch = Icons.search;
  static const IconData iconDataCart = Icons.shopping_cart;
  static const IconData iconDataAccount = Icons.account_box;

  //------------------------------------------------
  //circleAvatarRadius
  static const double radiusCircleAvatar27 = 27;

  //------------------------------------------------
  //fontHeight
  static const double fontHeight12decimal = 1.2;

  //------------------------------------------------
  //fontHeight
  static double itemCardHeight(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.275;
  }

  static double itemCardWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.45;
  }

//------------------------------------------------
//borderWidth
  static const double borderWidth2 = 2;
}
