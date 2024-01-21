import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';

// ignore: must_be_immutable
class AppbarItemWidget extends StatelessWidget {
  const AppbarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgArrow1,
      height: 3.v,
      width: 28.h,
      margin: EdgeInsets.fromLTRB(30.h, 22.v, 334.h, 17.v),
    );
  }
}
