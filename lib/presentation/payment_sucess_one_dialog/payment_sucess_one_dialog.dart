import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PaymentSucessOneDialog extends StatelessWidget {
  const PaymentSucessOneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 281.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark1,
            height: 103.adaptSize,
            width: 103.adaptSize,
            margin: EdgeInsets.only(left: 51.h),
          ),
          SizedBox(height: 10.v),
          Text(
            "Receipt Saved Successfully",
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
