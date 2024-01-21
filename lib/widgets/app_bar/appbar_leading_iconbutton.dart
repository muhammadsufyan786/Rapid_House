import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 25.adaptSize,
          width: 25.adaptSize,
          decoration: IconButtonStyleHelper.outlineErrorContainer,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
          ),
        ),
      ),
    );
  }
}
