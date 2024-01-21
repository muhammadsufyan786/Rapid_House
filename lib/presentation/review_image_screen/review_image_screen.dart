import '../review_image_screen/widgets/reviewimageslistsection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';

class ReviewImageScreen extends StatelessWidget {
  const ReviewImageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildReviewImagesSection(context),
                  _buildReviewImagesListSection(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewImagesSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            leadingWidth: 392.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.fromLTRB(30.h, 22.v, 334.h, 17.v),
            ),
            styleType: Style.bgStyle,
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Text(
              "Review Images",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewImagesListSection(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: AppDecoration.outlineBlack900,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: 15,
          itemBuilder: (context, index) {
            return ReviewimageslistsectionItemWidget();
          },
        ),
      ),
    );
  }
}
