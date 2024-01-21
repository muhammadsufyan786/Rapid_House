import '../widgets/appbar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rapid_house/core/app_export.dart';
import 'package:rapid_house/widgets/app_bar/appbar_leading_image.dart';
import 'package:rapid_house/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class ReviewimageslistsectionItemWidget extends StatelessWidget {
  const ReviewimageslistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
          // itemCount: 1,
          // itemBuilder: (context, index) {
          //     return AppbarItemWidget();
          //   },
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
}
