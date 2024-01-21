import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';
import 'package:rapid_house/widgets/custom_icon_button.dart';
import 'package:rapid_house/widgets/custom_outlined_button.dart';

class PaymentSucessScreen extends StatelessWidget {
  const PaymentSucessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("Payment Receipt",
                              style: theme.textTheme.headlineMedium))),
                  SizedBox(height: 14.v),
                  SizedBox(
                      height: 445.v,
                      width: 345.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        _buildPaymentDetailColumn(context),
                        CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.outlineBlack,
                            alignment: Alignment.topCenter,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmarkOnprimary))
                      ])),
                  SizedBox(height: 20.v),
                  CustomOutlinedButton(
                      height: 40.v,
                      width: 161.h,
                      text: "Get Receipt",
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 8.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgDownload,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumPoppinsPrimary),
                  SizedBox(height: 46.v),
                  CustomElevatedButton(
                      text: "Done",
                      margin: EdgeInsets.symmetric(horizontal: 3.h),
                      onPressed: () {
                        onTapDone(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 64.v,
        leadingWidth: 392.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowRight,
            margin: EdgeInsets.fromLTRB(30.h, 8.v, 322.h, 8.v),
            onTap: () {
              onTapArrowRight(context);
            }));
  }

  /// Section Widget
  Widget _buildPaymentDetailColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 33.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup13),
                    fit: BoxFit.cover)),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 15.v),
              Text("Payment Success!", style: theme.textTheme.titleLarge),
              SizedBox(height: 4.v),
              Text("Your payment has been successfully done.",
                  style: CustomTextStyles.bodyMediumPoppins_1),
              SizedBox(height: 20.v),
              Opacity(
                  opacity: 0.5,
                  child: Divider(
                      color:
                          theme.colorScheme.primaryContainer.withOpacity(0.53),
                      indent: 8.h,
                      endIndent: 8.h)),
              SizedBox(height: 22.v),
              Text("Total Payment",
                  style: CustomTextStyles.bodyMediumPoppins_1),
              Text("75", style: theme.textTheme.headlineSmall),
              SizedBox(height: 19.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                    padding: EdgeInsets.only(top: 6.v, bottom: 1.v),
                    child: Text("Payment Status",
                        style: CustomTextStyles.bodyMediumPoppins)),
                CustomElevatedButton(
                    height: 28.v,
                    width: 90.h,
                    text: "Success",
                    buttonStyle: CustomButtonStyles.fillWhiteATL14,
                    buttonTextStyle: CustomTextStyles.titleSmallOnPrimary)
              ]),
              SizedBox(height: 13.v),
              _buildPaymentDetailRow(context,
                  paymentRefNo: "Name", amount: "Ototo Ioki"),
              SizedBox(height: 11.v),
              _buildPaymentDetailRow(context,
                  paymentRefNo: "Payment Ref No", amount: "000085752257"),
              SizedBox(height: 10.v),
              _buildPaymentDetailRow(context,
                  paymentRefNo: "Payment Method",
                  amount: "Debit / Credit Card"),
              SizedBox(height: 11.v),
              _buildPaymentDetailRow(context,
                  paymentRefNo: "Payment Time",
                  amount: "Mar 22, 2023, 13:22:16")
            ])));
  }

  /// Common widget
  Widget _buildPaymentDetailRow(
    BuildContext context, {
    required String paymentRefNo,
    required String amount,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(paymentRefNo,
              style: CustomTextStyles.bodyMediumPoppins
                  .copyWith(color: theme.colorScheme.errorContainer))),
      Text(amount,
          style: theme.textTheme.labelLarge!
              .copyWith(color: theme.colorScheme.errorContainer))
    ]);
  }

  /// Navigates to the dashboardOneScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardOneScreen);
  }

  /// Navigates to the dashboardOneScreen when the action is triggered.
  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardOneScreen);
  }
}
