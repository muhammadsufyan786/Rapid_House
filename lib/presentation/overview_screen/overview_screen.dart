import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_checkbox_button.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OverviewScreen extends StatelessWidget {
  OverviewScreen({Key? key}) : super(key: key);

  bool objectRemoval = false;

  bool dayToDusk = false;

  bool twilight = false;

  bool priorityTurnaround = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 14.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Overview",
                              style: theme.textTheme.headlineMedium))),
                  SizedBox(height: 17.v),
                  _buildAddress(context),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Services Overview",
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 8.v),
                  _buildServices(context),
                  SizedBox(height: 20.v),
                  _buildTotalAmount(context),
                  Spacer(),
                  SizedBox(height: 60.v),
                  CustomElevatedButton(
                      text: "Pay VIA Card",
                      margin: EdgeInsets.symmetric(horizontal: 5.h),
                      onPressed: () {
                        onTapPayVIACard(context);
                      })
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
  Widget _buildAddress(BuildContext context) {
    return Container(
        width: 350.h,
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.fillBlue50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Address", style: CustomTextStyles.titleSmallErrorContainer),
              SizedBox(height: 6.v),
              Text("123 Main Road, QLD 3013", style: theme.textTheme.bodyMedium)
            ]));
  }

  /// Section Widget
  Widget _buildServices(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
        decoration: AppDecoration.fillBlue50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v, bottom: 15.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Property Photography",
                                      style: CustomTextStyles
                                          .titleSmallOnPrimaryContainer),
                                  SizedBox(height: 1.v),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                            opacity: 0.7,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 2.v, bottom: 3.v),
                                                child: Text("No of Photos",
                                                    style: CustomTextStyles
                                                        .bodyMediumPoppinsOnPrimaryContainer_1))),
                                        Padding(
                                            padding: EdgeInsets.only(left: 6.h),
                                            child: Text("15",
                                                style: CustomTextStyles
                                                    .titleMedium_1))
                                      ])
                                ])),
                        SizedBox(
                            height: 66.v,
                            width: 74.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle466x74,
                                  height: 66.v,
                                  width: 74.h,
                                  radius: BorderRadius.circular(6.h),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("+14",
                                      style: CustomTextStyles
                                          .titleMediumWhiteA700))
                            ]))
                      ])),
              SizedBox(height: 6.v),
              Text("Services ", style: theme.textTheme.titleMedium),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(right: 50.h),
                  child: Row(children: [
                    CustomCheckboxButton(
                        text: "Object Removal",
                        value: objectRemoval,
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        textStyle:
                            CustomTextStyles.labelLargePrimaryContainer12,
                        onChange: (value) {
                          objectRemoval = value;
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 39.h),
                        child: CustomCheckboxButton(
                            text: "Day to Dusk",
                            value: dayToDusk,
                            textStyle:
                                CustomTextStyles.labelLargePrimaryContainer,
                            onChange: (value) {
                              dayToDusk = value;
                            }))
                  ])),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.only(right: 9.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCheckboxButton(
                            text: "Twilight",
                            value: twilight,
                            textStyle:
                                CustomTextStyles.labelLargePrimaryContainer_1,
                            onChange: (value) {
                              twilight = value;
                            }),
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: CustomCheckboxButton(
                                text: "Priority Turnaround",
                                value: priorityTurnaround,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                textStyle: CustomTextStyles
                                    .labelLargePrimaryContainer12,
                                onChange: (value) {
                                  priorityTurnaround = value;
                                }))
                      ])),
              SizedBox(height: 8.v)
            ]));
  }

  /// Section Widget
  Widget _buildTotalAmount(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 21.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 11.v),
                  child: Text("Total Amount",
                      style: CustomTextStyles.titleSmallErrorContainer)),
              Text("75", style: CustomTextStyles.headlineMedium_1)
            ]));
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapPayVIACard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreen);
  }
}
