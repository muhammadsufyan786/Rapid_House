import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppdemoItemWidget extends StatelessWidget {
  const AppdemoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.v),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Column(
              children: [
                SizedBox(
                  width: 174.h,
                  child: Text(
                    "Learn how to use the app by watching the demo just click the link below.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ),
                SizedBox(height: 15.v),
                CustomElevatedButton(
                  height: 41.v,
                  width: 177.h,
                  text: "Watch Demo",
                  buttonStyle: CustomButtonStyles.fillPrimary,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 116.v,
            width: 131.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4,
                  height: 116.v,
                  width: 131.h,
                  radius: BorderRadius.circular(
                    6.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 25.v,
                  width: 21.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 49.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
