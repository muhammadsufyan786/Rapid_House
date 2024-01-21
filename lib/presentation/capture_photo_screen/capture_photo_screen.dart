import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/appbar_title_image.dart';
import 'package:rapid_house/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';

class CapturePhotoScreen extends StatelessWidget {
  const CapturePhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 10.v),
                          child: SizedBox(width: 150.h, child: Divider()))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder51,
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgIosUi),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(context),
                            SizedBox(height: 19.v),
                            _buildHeaderRow(context),
                            Spacer(),
                            _buildContentRow(context),
                            SizedBox(height: 12.v),
                            _buildPhotoColumn(context)
                          ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 121.v,
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 26.h, top: 78.v, bottom: 26.v),
            onTap: () {
              onTapClose(context);
            }),
        centerTitle: true,
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgArrowUp,
            margin: EdgeInsets.only(top: 71.v, bottom: 22.v)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.fromLTRB(12.h, 72.v, 12.h, 23.v))
        ]);
  }

  /// Section Widget
  Widget _buildHeaderRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector81,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(top: 18.v)),
              CustomElevatedButton(
                  height: 38.v,
                  width: 90.h,
                  text: "7 of 15",
                  buttonStyle: CustomButtonStyles.fillBlack,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA70016),
              CustomImageView(
                  imagePath: ImageConstant.imgVector82,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(top: 18.v))
            ]));
  }

  /// Section Widget
  Widget _buildContentRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector81,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(bottom: 25.v)),
              Spacer(flex: 51),
              Container(
                  width: 71.h,
                  margin: EdgeInsets.only(top: 6.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 24.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 7.v),
                            padding: EdgeInsets.all(3.h),
                            decoration: AppDecoration.fillBlack.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                            child: Text("0.5",
                                style: CustomTextStyles
                                    .labelLargeRajdhaniWhiteA700)),
                        CustomElevatedButton(
                            height: 38.v,
                            width: 38.h,
                            text: "1",
                            buttonStyle: CustomButtonStyles.fillBlackTL19,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallRajdhaniAmber300)
                      ])),
              Spacer(flex: 48),
              CustomImageView(
                  imagePath: ImageConstant.imgVector82,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(bottom: 25.v))
            ]));
  }

  /// Section Widget
  Widget _buildPhotoColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 160.h, vertical: 14.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup16),
                fit: BoxFit.cover)),
        child: Column(children: [
          Text("Photo".toUpperCase(),
              style: CustomTextStyles.titleSmallAmber300),
          SizedBox(height: 17.v),
          CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 71.adaptSize,
              width: 71.adaptSize),
          SizedBox(height: 67.v)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
