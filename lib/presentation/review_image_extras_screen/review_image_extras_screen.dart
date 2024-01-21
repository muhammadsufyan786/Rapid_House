import '../review_image_extras_screen/widgets/gridcomponenttwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_checkbox_button.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ReviewImageExtrasScreen extends StatelessWidget {
  ReviewImageExtrasScreen({Key? key}) : super(key: key);

  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("Extras",
                              style: theme.textTheme.headlineMedium)),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("Choose any extras :",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 13.v),
                      _buildGridComponentTwo(context),
                      SizedBox(height: 37.v),
                      _buildFormFieldSoft(context),
                      SizedBox(height: 25.v),
                      _buildCheckBox(context),
                      SizedBox(height: 43.v),
                      CustomElevatedButton(
                          text: "Next",
                          margin: EdgeInsets.symmetric(horizontal: 5.h),
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
            margin: EdgeInsets.fromLTRB(29.h, 22.v, 335.h, 17.v)),
        styleType: Style.bgStyle);
  }

  /// Section Widget
  Widget _buildGridComponentTwo(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 111.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 16.h),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GridcomponenttwoItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildFormFieldSoft(BuildContext context) {
    return SizedBox(
        height: 122.v,
        width: 350.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.outlineGrayF
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 65.v),
                        Opacity(
                            opacity: 0.5,
                            child: Text(" Note for the editor",
                                style: CustomTextStyles
                                    .bodyMediumPoppinsWhiteA700))
                      ]))),
          CustomElevatedButton(
              height: 28.v,
              width: 128.h,
              text: "Further Instructions",
              margin: EdgeInsets.only(left: 21.h),
              buttonStyle: CustomButtonStyles.fillWhiteA,
              buttonTextStyle: CustomTextStyles.bodySmallPoppins,
              alignment: Alignment.topLeft)
        ]));
  }

  /// Section Widget
  Widget _buildCheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: CustomCheckboxButton(
                alignment: Alignment.center,
                text:
                    "I confirm I am responsible for taking the photos and RapidSnap PRO is not responsible for the final output of the images.",
                isExpandedText: true,
                value: checkBox,
                onChange: (value) {
                  checkBox = value;
                })));
  }

  /// Navigates to the overviewScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.overviewScreen);
  }
}
