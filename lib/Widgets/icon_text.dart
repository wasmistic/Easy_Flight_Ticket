import 'package:flight_ticket/appColor/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom:20.h),
      padding: EdgeInsets.symmetric(horizontal:10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColor.primaryColor,),
          SizedBox(width: 10.w,),
          Text(text,style: AppColor.headLineStyle3.copyWith(color: AppColor.primaryColor),)
        ],
      ),
    );
  }
}
