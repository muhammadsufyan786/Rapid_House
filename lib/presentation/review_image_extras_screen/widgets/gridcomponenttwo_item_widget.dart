import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class GridcomponenttwoItemWidget extends StatelessWidget {
  const GridcomponenttwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(7.h),
        decoration: AppDecoration.fillBlue50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionPrimary,
                    height: 39.v,
                    width: 45.h,
                    margin: EdgeInsets.only(top: 17.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      bottom: 26.v,
                    ),
                    child: CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Text(
              "Object Removal",
              style: CustomTextStyles.labelLargePrimary,
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }
}
