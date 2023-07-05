import 'package:barcode_widget/barcode_widget.dart';
import 'package:flight_ticket/appColor/app_color.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/column_text.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.h,left: 20.w, right: 20.w, bottom: 20.h),
                child: Text('Tickets', style: AppColor.headLineStyle1,),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.h,left: 20.w, right: 20.w,),
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
                      child: Center(child: Text('Upcoming',style: AppColor.textStyle,),),
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
                      child: Center(child: Text('Previous',style: AppColor.textStyle,),),
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTicket(context),
                    SizedBox(height: 50.h,),
                    Row(
                      children: [
                        ColumnText(alignment: CrossAxisAlignment.start,firstText: '1 May',secondText: 'Date',),
                        Expanded(child: Container()),
                        ColumnText(alignment: CrossAxisAlignment.center,firstText: '08:00 AM',secondText: 'Departure time',),
                        Expanded(child: Container()),
                        ColumnText(alignment: CrossAxisAlignment.end,firstText: '23',secondText: 'Number',)
                      ],
                    ),
                    SizedBox(height: 50.h,),
                    Row(
                      children: [
                        ColumnText(alignment: CrossAxisAlignment.start,firstText: 'Flutter Afo',secondText: 'Passenger',),
                        Expanded(child: Container()),
                        ColumnText(alignment: CrossAxisAlignment.end,firstText: '5221  364869',secondText: 'Passport',)
                      ],
                    ),
                    SizedBox(height: 50.h,),
                    Row(
                      children: [
                        ColumnText(alignment: CrossAxisAlignment.start,firstText: '364738 28274478',secondText: 'Number of E-ticket'),
                        Expanded(child: Container()),

                        ColumnText(alignment: CrossAxisAlignment.end,firstText: '825028',secondText: 'Booking code',)
                      ],
                    ),
                    SizedBox(height: 50.h,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png',fit: BoxFit.cover, width: 50.w,height: 12.h,),
                                Text('***2462',style: AppColor.headLineStyle4.copyWith(color: AppColor.primaryColor),),
                              ],
                            ),
                            Text('Payment method', style: AppColor.headLineStyle4,),
                          ],
                        ),
                        Expanded(child: Container()),

                        ColumnText(alignment: CrossAxisAlignment.end,firstText: '\$249.99',secondText: 'Price',)
                      ],
                    ),
                    SizedBox(height: 100.h,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data:'https://github.com/nartinovovo',
                        drawText: false,
                        color: AppColor.textColor,
                        width: double.infinity,
                        height: 70.h,
                      ),
                    ),
                    SizedBox(height: 30.h,),
                  ],
                ),
              ),
              _buildButtomTicket(context),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/2,
              left: 10.w,
              child: Container(
                padding: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                     color: AppColor.primaryColor,
                    width: 2.sp,
                  )
                ),
                child: CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  radius: 5.sp,
                ),
              )
          ),
          Positioned(
              top: MediaQuery.of(context).size.height/2,
              right: 10.w,
              child: Container(
                padding: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColor.primaryColor,
                      width: 2.sp,
                    )
                ),
                child: CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  radius: 5.sp,
                ),
              )
          ),
        ],
      ),
    );
  }

  _buildTicket(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NYC', style: AppColor.headLineStyle4.copyWith(color: AppColor.primaryColor),),
                    Expanded(child: Container()),
                    _buildCircle(),
                    Expanded(child:Stack(
                      children: [
                        SizedBox(
                          height: 24.h,
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return Flex(
                                direction:Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:List.generate((constraints.constrainWidth()/6).floor(), (index) =>SizedBox(
                                  height: 3.h,
                                  width: 1.w,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: AppColor.primaryColor
                                    ),
                                  ),
                                )),
                              );
                            },
                          ),
                        ),
                        Positioned(
                            top: 2.h,
                            left: 16.w,
                            child: Center(child:  Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: AppColor.primaryColor,),)),
                      ],
                    )
                    ),
                    _buildCircle(),
                    Expanded(child: Container()),
                    Text('LDN', style: AppColor.headLineStyle4.copyWith(color: AppColor.primaryColor),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New York', style: AppColor.headLineStyle4,),
                    Text('8H 30m', style: AppColor.headLineStyle4,),
                    Text('London', style: AppColor.headLineStyle4,)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  _buildCircle(){
    return Container(
      padding: EdgeInsets.all(3.0.sp),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 2.5.w, color: AppColor.primaryColor
          )
      ),
    );
  }

  _buildButtomTicket(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: 200.h,
      margin: EdgeInsets.symmetric(horizontal:20.w, vertical: 10.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NYC', style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                    Expanded(child: Container()),
                    _buildButtomCircle(),
                    Expanded(child:Stack(
                      children: [
                        SizedBox(
                          height: 24.h,
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return Flex(
                                direction:Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:List.generate((constraints.constrainWidth()/6).floor(), (index) =>SizedBox(
                                  height: 3.h,
                                  width: 1.w,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                  ),
                                )),
                              );
                            },
                          ),
                        ),
                        Positioned(
                            top: 2.h,
                            left: 16.w,
                            child: Center(child:  Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Colors.white,),)),
                      ],
                    )
                    ),
                    _buildButtomCircle(),
                    Expanded(child: Container()),
                    Text('LDN', style: AppColor.headLineStyle4.copyWith(color: Colors.white),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New York', style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                    Text('8H 30m', style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                    Text('London', style: AppColor.headLineStyle4.copyWith(color: Colors.white),)
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: AppColor.orangeColor,
            child: Row(
              children: [
                Container(
                  height: 20.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        bottomRight:  Radius.circular(20.r),
                      )
                  ),
                ),
                Expanded(child:SizedBox(
                  height: 24.h,
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction:Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:List.generate((constraints.constrainWidth()/16).floor(), (index) => SizedBox(
                          width: 5.w,
                          height: 1.h,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                          ),
                        )),
                      );
                    },
                  ),
                )),
                Container(
                  height: 20.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        bottomLeft:  Radius.circular(20.r),
                      )
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
                color: AppColor.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15.r),
                  bottomLeft: Radius.circular(15.r),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 May',
                      textAlign: TextAlign.start,
                      style: AppColor.headLineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      'Date',
                      textAlign: TextAlign.start,
                      style: AppColor.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '08:00 AM',
                      style: AppColor.headLineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      'Departure Time',
                      style: AppColor.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '23',
                      textAlign:TextAlign.end,
                      style: AppColor.headLineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      'Number',
                      textAlign: TextAlign.end,
                      style:  AppColor.headLineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  _buildButtomCircle(){
    return Container(
      padding: EdgeInsets.all(3.0.sp),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 2.5.w, color: Colors.white
          )
      ),
    );
  }

}
