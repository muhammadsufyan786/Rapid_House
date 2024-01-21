import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_checkbox_button.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';
import 'package:rapid_house/widgets/custom_floating_text_field.dart';
import 'package:rapid_house/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class NewListingScreen extends StatelessWidget {
  NewListingScreen({Key? key}) : super(key: key);

  TextEditingController addressController = TextEditingController();

  bool confirmationCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(21.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("New Listing",
                              style: theme.textTheme.headlineMedium))),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Enter Your Address below",
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 11.v),
                  CustomFloatingTextField(
                      controller: addressController,
                      labelText: "Address",
                      labelStyle: theme.textTheme.bodyMedium!,
                      hintText: "Address",
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 35.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Service",
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 8.v),
                  _buildNewListingForm(context),
                  SizedBox(height: 94.v),
                  _buildConfirmationCheckbox(context),
                  SizedBox(height: 42.v),
                  CustomElevatedButton(
                      text: "Start",
                      margin: EdgeInsets.symmetric(horizontal: 5.h),
                      onPressed: () {
                        onTapStart(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 52.v,
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow1,
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 334.h, 13.v)));
  }

  /// Section Widget
  Widget _buildNewListingForm(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v),
        decoration: AppDecoration.fillBlue
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
                            padding: EdgeInsets.only(top: 1.v, bottom: 3.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Property Photography",
                                      style: CustomTextStyles
                                          .titleSmallOnPrimaryContainer),
                                  SizedBox(height: 3.v),
                                  SizedBox(
                                      width: 170.h,
                                      child: Text(
                                          "Upto 15 images Next Day Turnaround Premium Editing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallPoppinsPrimaryContainer))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle4116x131,
                            height: 66.v,
                            width: 74.h,
                            radius: BorderRadius.circular(6.h))
                      ])),
              SizedBox(height: 12.v),
              Text("Select No of Photos",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer),
              SizedBox(height: 8.v),
              CustomOutlinedButton(
                  height: 46.v,
                  text: "15",
                  rightIcon: Container(
                      margin: EdgeInsets.only(left: 30.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 14.v,
                          width: 12.h)),
                  buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
                  buttonTextStyle: CustomTextStyles.titleMedium16)
            ]));
  }

  /// Section Widget
  Widget _buildConfirmationCheckbox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: CustomCheckboxButton(
            text:
                "I confirm I am responsible for taking the photos and RapidSnap PRO is not responsible for the final output of the images.",
            isExpandedText: true,
            value: confirmationCheckbox,
            onChange: (value) {
              confirmationCheckbox = value;
            }));
  }

  /// Navigates to the capturePhotoScreen when the action is triggered.
  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.capturePhotoScreen);
  }
}
