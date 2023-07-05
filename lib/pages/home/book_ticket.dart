import 'dart:ffi';

import 'package:flight_ticket/appColor/app_color.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Widgets/row_text.dart';
import '../../data/data.dart';

class BookTicketPage extends StatefulWidget {
  const BookTicketPage({Key? key}) : super(key: key);

  @override
  State<BookTicketPage> createState() => _BookTicketPageState();
}

class _BookTicketPageState extends State<BookTicketPage> {
  List<Map<String, dynamic>> Data = RawDataList.generateHotelList();
  List<Map<String, dynamic>> TicketData = RawDataList.generateTicketlList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h, bottom: 30.h),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: AppColor.textStyle,
                      ),
                      Text(
                        'Book Tickets',
                        style: AppColor.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      image: DecorationImage(
                        image: AssetImage('assets/images/img_1.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                ],
              ),
            ),
            _buildSearch(),
            _buildUpcomingFlightText(),
            Container(
              height:170.h,
              margin: EdgeInsets.only(left: 20.w),
              // color: Colors.purple,
              child: ListView.builder(
                itemCount:TicketData.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(_,index){
                    return _buildTicket(context,TicketData[index]);
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, top: 30.h, right: 20.w, bottom:10.h),
              child: AppRowText(firstText: 'Hotels', secondText: 'View all'),
            ),
            Container(
              height: 250.h,
              margin: EdgeInsets.only(left: 20.w, bottom: 40.h),
              child: ListView.builder(

                  itemCount:Data.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemBuilder:(_,index){
                    return  _buildHotelCard(Data[index]);
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildSearch(){
    return Container(
      height: 45.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Colors.white
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: AppColor.headLineStyle4.copyWith(color: AppColor.textColor),
          prefixIcon: Icon(FluentSystemIcons.ic_fluent_search_filled, color: AppColor.textColor, size: 20.sp,),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),

      ),
    );
  }

  _buildUpcomingFlightText(){
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom:10.h),
      child: AppRowText(firstText: 'Upcoming Flights', secondText: 'View all'),
    );
  }

  _buildTicket(BuildContext context, Map<String, dynamic> ticketData){
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: 200.h,
      margin: EdgeInsets.only(right: 16.w),
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
                    Text(ticketData["from"]["code"], style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
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
                    _buildCircle(),
                    Expanded(child: Container()),
                    Text(ticketData["to"]["code"], style: AppColor.headLineStyle4.copyWith(color: Colors.white),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ticketData["from"]["name"], style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                    Text(ticketData["time"], style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
                    Text(ticketData["to"]["code"], style: AppColor.headLineStyle4.copyWith(color: Colors.white),)
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
                      ticketData["date"],
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
                      ticketData["time"],
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
                      ticketData["number"].toString(),
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

  _buildCircle(){
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

  _buildHotelCard(Map<String, dynamic> data){
    return Container(
      height: 250.h,
      width: 200.w,
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${data['image']}')
                )
            ),
          ),
          SizedBox(height: 15.h,),
          Text(data['place'], style: AppColor.headLineStyle3.copyWith(color: Colors.white),),
          SizedBox(height:5.h,),
          Text(data['destination'], style: AppColor.headLineStyle4.copyWith(color: Colors.white),),
          SizedBox(height:5.h,),
          Text('\$ ${data['price']}/night', style: AppColor.headLineStyle2.copyWith(color: Colors.white),),
        ],
      ),
    );
  }
}
