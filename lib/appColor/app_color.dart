import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor{

  static const Color primaryColor = Color(0xFF687daf);
  static const Color textColor = Color(0xFF3b3b3b);
  static const Color bgColor = Color(0xFFeeedf2);
  static const Color orangeColor = Color(0xFFF37B67);
  static TextStyle textStyle = GoogleFonts.rubik(fontSize:16.sp, color:textColor,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = GoogleFonts.rubik(fontSize:26.sp, color:textColor,fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = GoogleFonts.rubik(fontSize:21.sp, color:textColor,fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = GoogleFonts.rubik(fontSize:17.sp, color:Colors.grey.shade500,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = GoogleFonts.rubik(fontSize:14.sp, color:Colors.grey.shade500,fontWeight: FontWeight.w500);

}