import 'package:flutter/cupertino.dart';

import '../appColor/app_color.dart';

class ColumnText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const ColumnText({Key? key, required this.firstText, required this.secondText, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: AppColor.headLineStyle4.copyWith(color: AppColor.primaryColor),),
        Text(secondText, style: AppColor.headLineStyle4,),
      ],
    );
  }
}
