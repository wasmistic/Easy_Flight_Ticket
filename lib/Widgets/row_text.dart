import 'package:flight_ticket/appColor/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRowText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const AppRowText({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: AppColor.headLineStyle3.copyWith(color: AppColor.textColor),),
        Text(secondText, style: AppColor.textStyle,),
      ],
    );
  }
}
