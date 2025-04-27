import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';
import 'package:invoicing_dashboard/core/utils/size_config.dart';
TextStyle getTitleStyle(BuildContext context,{double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? AppColors.primary);
}

TextStyle getBodyStyle(BuildContext context,
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? AppColors.white);
}

TextStyle getSmallStyle(BuildContext context,
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? AppColors.grey
   );
 }

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}