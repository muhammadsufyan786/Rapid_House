import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_checkbox_button.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';
import 'package:rapid_house/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  TextEditingController floatingTextFieldCardNumberController =
      TextEditingController();

  TextEditingController floatingTextFieldNameController =
      TextEditingController();

  TextEditingController floatingTextFieldDateController =
      TextEditingController();

  TextEditingController floatingTextFieldCvvController =
      TextEditingController();

  bool checkBoxSaveThisCard = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 18.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text("Payment",
                                          style:
                                              theme.textTheme.headlineMedium))),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: 69.v,
                                      width: 202.h,
                                      margin: EdgeInsets.only(left: 8.h),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 25.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                              child: Opacity(
                                                                  opacity: 0.5,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgIcPaymentPaypal,
                                                                      height: 44
                                                                          .adaptSize,
                                                                      width: 44
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          right:
                                                                              4.h)))),
                                                          Expanded(
                                                              child: Opacity(
                                                                  opacity: 0.5,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgIcPaymentVisa,
                                                                      height: 44
                                                                          .adaptSize,
                                                                      width: 44
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              4.h)))),
                                                          Expanded(
                                                              child: Opacity(
                                                                  opacity: 0.5,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgTelevisionOnprimarycontainer,
                                                                      height: 44
                                                                          .adaptSize,
                                                                      width: 44
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              4.h)))),
                                                          Expanded(
                                                              child: Opacity(
                                                                  opacity: 0.5,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgIcPaymentMastercard,
                                                                      height: 44
                                                                          .adaptSize,
                                                                      width: 44
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              4.h))))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "Credit / Debit Card",
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ]))),
                              SizedBox(height: 27.v),
                              _buildFloatingTextFieldCardNumber(context),
                              SizedBox(height: 33.v),
                              _buildFloatingTextFieldName(context),
                              SizedBox(height: 33.v),
                              _buildRowFiftyFive(context),
                              SizedBox(height: 96.v),
                              _buildCheckBoxSaveThisCard(context),
                              SizedBox(height: 10.v),
                              Container(
                                  width: 315.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 17.h),
                                  child: Text(
                                      "We will save this card for your convenience. If required, you can remove the card.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 37.v),
                              _buildButtonPayNow(context),
                              SizedBox(height: 5.v)
                            ])))))));
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
  Widget _buildFloatingTextFieldCardNumber(BuildContext context) {
    return CustomFloatingTextField(
        controller: floatingTextFieldCardNumberController,
        labelText: "Card Number",
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "Card Number",
        textInputType: TextInputType.number);
  }

  /// Section Widget
  Widget _buildFloatingTextFieldName(BuildContext context) {
    return CustomFloatingTextField(
        controller: floatingTextFieldNameController,
        labelText: "Cardholder Name",
        labelStyle: theme.textTheme.bodyMedium!,
        hintText: "Cardholder Name");
  }

  /// Section Widget
  Widget _buildFloatingTextFieldDate(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 9.h, bottom: 1.v),
            child: CustomFloatingTextField(
                controller: floatingTextFieldDateController,
                labelText: "Exp Date",
                labelStyle: theme.textTheme.bodyMedium!,
                hintText: "Exp Date")));
  }

  /// Section Widget
  Widget _buildFloatingTextFieldCvv(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: CustomFloatingTextField(
                controller: floatingTextFieldCvvController,
                labelText: "CVV / CVC",
                labelStyle: theme.textTheme.bodyMedium!,
                hintText: "CVV / CVC",
                textInputAction: TextInputAction.done)));
  }

  /// Section Widget
  Widget _buildRowFiftyFive(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildFloatingTextFieldDate(context),
      _buildFloatingTextFieldCvv(context)
    ]);
  }

  /// Section Widget
  Widget _buildCheckBoxSaveThisCard(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Save this card",
                value: checkBoxSaveThisCard,
                textStyle: CustomTextStyles.titleMediumInter,
                onChange: (value) {
                  checkBoxSaveThisCard = value;
                })));
  }

  /// Section Widget
  Widget _buildButtonPayNow(BuildContext context) {
    return CustomElevatedButton(
        text: "Pay Now",
        margin: EdgeInsets.symmetric(horizontal: 5.h),
        onPressed: () {
          onTapButtonPayNow(context);
        });
  }

  /// Navigates to the paymentSucessScreen when the action is triggered.
  onTapButtonPayNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentSucessScreen);
  }
}
