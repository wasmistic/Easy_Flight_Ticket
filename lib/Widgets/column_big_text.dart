import 'package:flutter/cupertino.dart';

import '../appColor/app_color.dart';

class ColumnBigTex extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const ColumnBigTex({Key? key, required this.firstText, required this.secondText, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: AppColor.headLineStyle2.copyWith(color: AppColor.textColor),),
        Text(secondText, style: AppColor.headLineStyle4,),
      ],
    );
  }
}
