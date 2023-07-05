import 'package:flight_ticket/appColor/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/icon_text.dart';
import '../../Widgets/row_text.dart';

class ArrivalPage extends StatelessWidget {
  const ArrivalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h, bottom: 20.h),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('What are', style: AppColor.headLineStyle1.copyWith(fontSize: 30.sp, height:1),),
                  Text('you looking for?', style: AppColor.headLineStyle1.copyWith(fontSize: 30.sp),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: Row(
                children: [
                  Expanded(child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.r),
                          bottomLeft:  Radius.circular(5.r),
                        )
                    ),
                    child: Center(child: Text('Airline Tickets',style: AppColor.textStyle,),),
                  )),
                  Expanded(child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.45),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.r),
                          bottomRight:  Radius.circular(5.r),
                        )
                    ),
                    child: Center(child: Text('Hotels',style: AppColor.textStyle,),),
                  )),
                ],
              ),
            ),
            AppIconText(text: 'Departure',icon:Icons.flight_takeoff_sharp,),
            AppIconText(text: 'Arrival',icon:Icons.flight_land_sharp,),
            Container(
              height: 49.h,
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              decoration: BoxDecoration(
                color: Color(0xFF264CD2),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(child: Text('find tickets',style: AppColor.textStyle.copyWith(color: Colors.white),),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
              child: AppRowText(secondText: 'View all', firstText: 'Upcoming Flights'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width:MediaQuery.of(context).size.width/2.2,
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 180.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg')
                            )
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        Text('20%',style: AppColor.headLineStyle2,),
                        Text('discount on',style: AppColor.headLineStyle2,),
                        Text('the early',style: AppColor.headLineStyle2,),
                        Text('booking of',style: AppColor.headLineStyle2,),
                        Text('this flight.',style: AppColor.headLineStyle2,),
                        Text('don\'t miss it.',style: AppColor.headLineStyle2,),
                        SizedBox(height: 30.h,),
                      ],
                    ),
                  ),
                  SizedBox(width:16.w,),
                  Column(
                    children: [
                      SizedBox(
                        height: 200.h,
                        child: Stack(
                          children: [
                            Container(
                              height: 200.h,
                              padding: EdgeInsets.all(16.sp),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.68),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Discount', style: AppColor.headLineStyle3.copyWith(color: Colors.white),),
                                    Text('for survey', style: AppColor.headLineStyle3.copyWith(color: Colors.white),),
                                    Text('take the survey', style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                                    Text('about our', style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                                    Text('services and', style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                                    Text('get discount', style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                                  ]
                              ),
                            ),
                            Positioned(
                              top: -45,
                                right: -54,
                                child: Container(
                                  // width: 150.w,
                                  // height: 150.h,
                                  padding: EdgeInsets.all(30.sp),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFF264CD2).withOpacity(0.5),
                                      width: 18.sp,
                                    )
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h,),
                      Container(
                        height: 190.h,
                        padding: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          color: AppColor.orangeColor,
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Column(
                          children: [
                            Text('Take Love', style: AppColor.headLineStyle2.copyWith(color: Colors.white),),
                            SizedBox(height:5.h,),
                            Row(
                              children: [
                                Text('😍', style: AppColor.headLineStyle1,),
                                Text('🥰', style: AppColor.headLineStyle1.copyWith(fontSize:32.sp,),),
                                Text('😘', style: AppColor.headLineStyle1,),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
