import 'package:flutter/material.dart';

const BoxDecoration styleBoxDecoration = (BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(kDarkestBlueGreen), Color(kDarkBlueGreen)],
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black,
      offset: Offset(5.0, 5.0),
      blurRadius: 10.0,
      spreadRadius: 2.0,
    ),
  ],
  color: Color(kDarkestBlue),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    bottomRight: Radius.circular(0.0),
    topLeft: Radius.circular(0.0),
    bottomLeft: Radius.circular(20.0),
  ),
));

// Colors https://colorhunt.co/palette/002b5b2b4865256d858fe3cf
const int kDarkestBlue = 0xFF002B5B;
const int kDarkBlue = 0xFF2B4865;
const int kMediumBlue = 0xFF8FE3CF;
const int kLightBlue = 0xFF8FE3CF;

// Colors https://colorhunt.co/palette/57c5b61598951a5f7a002b5b
const int kDarkestBlueGreen = 0xFF002B5B;
const int kDarkBlueGreen = 0xFF1A5F7A;
const int kMedBlueGreen = 0xFF159895;
const int kLightBlueGreen = 0xFF57C5B6;

// Strings
const String kAppBarTitle = 'Radical Career Services';
const String kAppBarTitleShort = 'RCTS';

//Font
const String kFontTypeForApp = 'YsabeauInfant-ExtraBold.ttf';
const int kFontColor = kDarkestBlue;
const int kTitleFontColor = kLightBlue;
const double kAppBarFontHeight = 20.0;
const double kContainerFontHeight = 40.0;
//Image
const double logoHeightValue = 200.0;
const double logoWidthValue = 300.0;

//Widgets

//Buttons
const double kButtonRadiusValue = 12.0;
final ButtonStyle kStyleElevatedButton = ElevatedButton.styleFrom(
  side: const BorderSide(width: 2, color: Color(kLightBlue), style: BorderStyle.solid),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(kButtonRadiusValue),
  ),
  backgroundColor: const Color(kDarkBlue),
  padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 0.0, bottom: 0.0),
  elevation: 25.0,
  shadowColor: const Color(kLightBlue),
  textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: kFontTypeForApp,
      color: Color(kDarkBlue)),
);
//URL
String kRctsUrl = 'https://www.radicaltransition.com/contact';
String kRctsLinkedInUrl = 'https://www.linkedin.com/company/radicaltransition/';
