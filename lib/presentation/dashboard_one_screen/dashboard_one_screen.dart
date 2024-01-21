import '../dashboard_one_screen/widgets/appdemo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_title.dart';
import 'package:rapid_house/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';
import 'package:rapid_house/widgets/custom_elevated_button.dart';

class DashboardOneScreen extends StatelessWidget {
  const DashboardOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              _buildGuestUser(context),
              SizedBox(height: 30.v),
              _buildThirtyNine(context),
              SizedBox(height: 40.v),
              _buildAppDemo(context),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                height: 29.v,
                width: 130.h,
                text: "Coming Soon",
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: CustomTextStyles.titleSmallInter,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 78.v,
      title: AppbarTitle(
        text: "Let’s Shoot !",
        margin: EdgeInsets.only(left: 30.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClock,
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGuestUser(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Guest User",
                  style: CustomTextStyles.titleMedium16,
                ),
                Text(
                  "lorem@rapidhouse.com",
                  style: CustomTextStyles.bodyMediumPoppinsOnPrimaryContainer,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyNine(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 12.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup37Teal900,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 12.h),
                ),
                SizedBox(height: 18.v),
                Text(
                  "New Listing",
                  style: CustomTextStyles.labelLargePrimary_1,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.outlineBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 11.v),
                CustomImageView(
                  imagePath: ImageConstant.imgVector87,
                  height: 43.adaptSize,
                  width: 43.adaptSize,
                ),
                SizedBox(height: 20.v),
                Text(
                  "Upload Media",
                  style: CustomTextStyles.labelLargePrimary12,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 13.v),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
                  height: 42.v,
                  width: 36.h,
                ),
                SizedBox(height: 19.v),
                Text(
                  "Past Listing",
                  style: CustomTextStyles.labelLargePrimary_1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAppDemo(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 40.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return AppdemoItemWidget();
      },
    );
  }
}
