import 'package:flight_ticket/appColor/app_color.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/column_big_text.dart';
import '../Widgets/column_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w,right: 20.w, top: 60.h,bottom: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                        fit:  BoxFit.cover,
                        image: AssetImage('assets/images/img_1.png')
                      )
                    ),
                  ),
                  SizedBox(width:6.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Book Tickets', style: AppColor.headLineStyle2.copyWith(height:.5),),
                      SizedBox(height: 5.h,),
                      Text('New York', style: AppColor.textStyle.copyWith(color: Colors.grey),),
                      SizedBox(height: 5.h,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal:10.sp, vertical:5.sp),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 20.w,
                              height: 20.h,
                              margin: EdgeInsets.only(right: 5.sp),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColor.primaryColor, width:5.sp)
                              ),
                            ),
                            Text('Premium Status', style: AppColor.textStyle,),
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Text('Edit', style: AppColor.textStyle,),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w,top: 20.h, right: 20.w,bottom: 20.h,),
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:16.sp, vertical: 20.sp),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filled,color: AppColor.primaryColor,),
                        ),
                        SizedBox(width: 10.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('You\'v got a new award', style: AppColor.headLineStyle2.copyWith(color: Colors.white),),
                            Text('You have 95 flights in a year', style: AppColor.textStyle.copyWith(color: Colors.white.withOpacity(0.5), fontSize:12.sp),)
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: -40,
                      right: -50,
                      child: Container(
                        padding: EdgeInsets.all(30.sp),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(  color: Color(0xFF264CD2).withOpacity(0.5),
                            width: 18.sp,),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w,bottom: 20.h,),
              child: Text('Accumulated miles', style: AppColor.headLineStyle3.copyWith(color: AppColor.textColor),),
            ),
            Center(
              child: Text('192802', style: AppColor.headLineStyle1.copyWith(color: AppColor.textColor, fontSize: 45.sp),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w,top: 20.h, right: 20.w,bottom: 20.h,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Miles accrued', style: AppColor.headLineStyle4),
                  Text('22 June 2023', style: AppColor.headLineStyle4),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w,bottom: 20.h,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnBigTex(firstText: '23 042',secondText: 'Miles', alignment: CrossAxisAlignment.start,),
                  ColumnBigTex(firstText: 'Airline CO',secondText: 'Received from', alignment: CrossAxisAlignment.end,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w,bottom: 20.h,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnBigTex(firstText: '24',secondText: 'Miles', alignment: CrossAxisAlignment.start,),
                  ColumnBigTex(firstText: 'McDoarail\'s',secondText: 'Received from', alignment: CrossAxisAlignment.end,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w,bottom: 20.h,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnBigTex(firstText: '52 340',secondText: 'Miles', alignment: CrossAxisAlignment.start,),
                  ColumnBigTex(firstText: 'Afolabi',secondText: 'Received from', alignment: CrossAxisAlignment.end,)
                ],
              ),
            ),
            Center(child:  Text('How to get more miles', style: AppColor.headLineStyle4.copyWith(color: AppColor.primaryColor)),),
            SizedBox(height: 25.h,),
          ],
        ),
      ),
    );
  }
}
