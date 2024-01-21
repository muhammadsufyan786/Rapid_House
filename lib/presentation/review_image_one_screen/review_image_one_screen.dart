import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';

class ReviewImageOneScreen extends StatelessWidget {
  const ReviewImageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 17.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("Review Images",
                              style: theme.textTheme.headlineMedium))),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Container(
                          height: 4.v,
                          width: 332.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(0.53)),
                          child: ClipRRect(
                              child: LinearProgressIndicator(
                                  value: 0.75,
                                  backgroundColor: theme
                                      .colorScheme.onPrimaryContainer
                                      .withOpacity(0.53),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.onPrimaryContainer))))),
                  SizedBox(height: 5.v),
                  Text("7 of 15", style: CustomTextStyles.titleMediumSemiBold),
                  SizedBox(height: 18.v),
                  _buildReviewImagesStack(context),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      height: 36.v,
                      width: 100.h,
                      text: "Retake",
                      buttonStyle: CustomButtonStyles.fillRed,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumWhiteA700SemiBold,
                      onPressed: () {
                        onTapRetake(context);
                      }),
                  SizedBox(height: 51.v),
                  CustomElevatedButton(
                      text: "Next",
                      margin: EdgeInsets.symmetric(horizontal: 27.h),
                      onPressed: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow1,
            margin: EdgeInsets.fromLTRB(30.h, 22.v, 334.h, 17.v)),
        styleType: Style.bgStyle);
  }

  /// Section Widget
  Widget _buildReviewImagesStack(BuildContext context) {
    return SizedBox(
        height: 393.adaptSize,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle230,
              height: 393.adaptSize,
              width: 393.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgGroup230,
              height: 20.v,
              width: 374.h,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the capturePhotoScreen when the action is triggered.
  onTapRetake(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.capturePhotoScreen);
  }

  /// Navigates to the reviewImageScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewImageScreen);
  }
}
