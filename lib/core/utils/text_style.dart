import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:invoicing_dashboard/core/utils/colors.dart';

getTitleStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
  return TextStyle(
    fontSize: fontSize ?? 16,
    fontWeight: fontWeight ?? FontWeight.w600,
    color: color ?? AppColors.primary,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}

getBodyStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
  return TextStyle(
    fontSize: fontSize ?? 16,
    fontWeight: fontWeight ?? FontWeight.w500,
    color: color ?? AppColors.white,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}

getSmallStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
  return TextStyle(
    fontSize: fontSize ?? 16,
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color ?? AppColors.grey,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}
