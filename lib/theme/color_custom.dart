import 'package:flutter/material.dart';

const Color greyBackgroundColor = Color.fromRGBO(249, 252, 255, 1);
const Color greyBorderColor = Color.fromRGBO(207, 207, 207, 1);

const Color greenLightColor = Color.fromRGBO(93, 230, 26, 1);
const Color greenDarkColor = Color.fromRGBO(57, 170, 2, 1);
const Color greenIconColor = Color.fromRGBO(30, 209, 2, 1);
const Color greenAccentColor = Color.fromRGBO(30, 209, 2, 1);
const Color greenShadowColor = Color.fromRGBO(30, 209, 2, 0.24); // 24%
const Color greenBackgroundColor = Color.fromRGBO(181, 255, 155, 0.36); // 36%

const Color orangeIconColor = Color.fromRGBO(236, 108, 11, 1);
const Color orangeBackgroundColor = Color.fromRGBO(255, 208, 155, 0.36); // 36%

const Color purpleLightColor = Color.fromRGBO(248, 87, 195, 1);
const Color purpleDarkColor = Color.fromRGBO(224, 19, 156, 1);
const Color purpleIconColor = Color.fromRGBO(209, 2, 99, 1);
const Color purpleAccentColor = Color.fromRGBO(209, 2, 99, 1);
const Color purpleShadowColor = Color.fromRGBO(209, 2, 99, 0.27); // 27%
const Color purpleBackgroundColor = Color.fromRGBO(255, 155, 205, 0.36); // 36%

const Color deeppurlpleIconColor = Color.fromRGBO(191, 0, 128, 1);
const Color deeppurlpleBackgroundColor =
    Color.fromRGBO(245, 155, 255, 0.36); // 36%

const Color blueLightColor = Color.fromRGBO(126, 182, 255, 1);
const Color blueDarkColor = Color.fromRGBO(95, 135, 231, 1);
const Color blueIconColor = Color.fromRGBO(9, 172, 206, 1);
const Color blueBackgroundColor = Color.fromRGBO(155, 255, 248, 0.36); // 36%
const Color blueShadowColor = Color.fromRGBO(104, 148, 238, 1);

const Color headerBlueLightColor = Color.fromRGBO(129, 199, 245, 1);
const Color headerBlueDarkColor = Color.fromRGBO(56, 103, 213, 1);
const Color headerGreyLightColor = Color.fromRGBO(225, 255, 255, 0.31); // 31%

const Color yellowIconColor = Color.fromRGBO(249, 194, 41, 1);
const Color yellowBellColor = Color.fromRGBO(225, 220, 0, 1);
const Color yellowAccentColor = Color.fromRGBO(255, 213, 6, 1);
const Color yellowShadowColor = Color.fromRGBO(243, 230, 37, 0.27); // 27%
const Color yellowBackgroundColor = Color.fromRGBO(255, 238, 155, 0.36); // 36%

const Color bellGreyColor = Color.fromRGBO(217, 217, 217, 1);
const Color bellYellowColor = Color.fromRGBO(255, 220, 0, 1);

const Color trashRedColor = Color.fromRGBO(251, 54, 54, 1);
const Color trashRedBackgroundColor = Color.fromRGBO(255, 207, 207, 1);

const Color textHeaderColor = Color.fromRGBO(85, 78, 143, 1);
const Color textHeaderGreyColor = Color.fromRGBO(104, 104, 104, 1);
const Color textSubHeaderGreyColor = Color.fromRGBO(161, 161, 161, 1);
const Color textSubHeaderColor = Color.fromRGBO(139, 135, 179, 1);
const Color textBodyColor = Color.fromRGBO(130, 160, 183, 1);
const Color textGreyColor = Color.fromRGBO(198, 198, 200, 1);
const Color textWhiteColor = Color.fromRGBO(243, 243, 243, 1);
const Color headerCircleColor = Color.fromRGBO(255, 255, 255, 0.17);

extension CustomColorScheme on ColorScheme {
  Color get greyBackground => greyBackgroundColor;
  Color get greyBorder => greyBorderColor;

  Color get greenLight => greenLightColor;
  Color get greenDark => greenDarkColor;
  Color get greenIcon => greenIconColor;
  Color get greenAccent => greenAccentColor;
  Color get greenShadow => greenShadowColor; // 24%
  Color get greenBackground => greenBackgroundColor; // 36%

  Color get orangeIcon => orangeIconColor;
  Color get orangeBackground => orangeBackgroundColor; // 36%

  Color get purpleLight => purpleLightColor;
  Color get purpleDark => purpleDarkColor;
  Color get purpleIcon => purpleIconColor;
  Color get purpleAccent => purpleAccentColor;
  Color get purpleShadow => purpleShadowColor; // 27%
  Color get purpleBackground => purpleBackgroundColor; // 36%

  Color get deeppurlpleIcon => deeppurlpleIconColor;
  Color get deeppurlpleBackground => deeppurlpleBackgroundColor; // 36%

  Color get blueLight => blueLightColor;
  Color get blueDark => blueDarkColor;
  Color get blueIcon => blueIconColor;
  Color get blueBackground => blueBackgroundColor; // 36%
  Color get blueShadow => blueShadowColor;

  Color get headerBlueLight => headerBlueLightColor;
  Color get headerBlueDark => headerBlueDarkColor;
  Color get headerGreyLight => headerGreyLightColor; // 31%

  Color get yellowIcon => yellowIconColor;
  Color get yellowBell => yellowBellColor;
  Color get yellowAccent => yellowAccentColor;
  Color get yellowShadow => yellowShadowColor; // 27%
  Color get yellowBackground => yellowBackgroundColor; // 36%

  Color get bellGrey => bellGreyColor;
  Color get bellYellow => bellYellowColor;

  Color get trashRed => trashRedColor;
  Color get trashRedBackground => trashRedBackgroundColor;

  Color get textHeader => textHeaderColor;
  Color get textHeaderGrey => textHeaderGreyColor;
  Color get textSubHeaderGrey => textSubHeaderGreyColor;
  Color get textSubHeader => textSubHeaderColor;
  Color get textBody => textBodyColor;
  Color get textGrey => textGreyColor;
  Color get textWhite => textWhiteColor;
  Color get headerCircle => headerCircleColor;
}
