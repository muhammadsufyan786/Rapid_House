import 'package:flutter/material.dart';
import 'package:rapid_house/presentation/dashboard_one_screen/dashboard_one_screen.dart';
import 'package:rapid_house/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:rapid_house/presentation/new_listing_screen/new_listing_screen.dart';
import 'package:rapid_house/presentation/capture_photo_screen/capture_photo_screen.dart';
import 'package:rapid_house/presentation/review_image_one_screen/review_image_one_screen.dart';
import 'package:rapid_house/presentation/review_image_screen/review_image_screen.dart';
import 'package:rapid_house/presentation/review_image_extras_screen/review_image_extras_screen.dart';
import 'package:rapid_house/presentation/overview_screen/overview_screen.dart';
import 'package:rapid_house/presentation/payment_screen/payment_screen.dart';
import 'package:rapid_house/presentation/payment_sucess_screen/payment_sucess_screen.dart';
import 'package:rapid_house/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String dashboardOneScreen = '/dashboard_one_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String newListingScreen = '/new_listing_screen';

  static const String capturePhotoScreen = '/capture_photo_screen';

  static const String reviewImageOneScreen = '/review_image_one_screen';

  static const String reviewImageScreen = '/review_image_screen';

  static const String reviewImageExtrasScreen = '/review_image_extras_screen';

  static const String overviewScreen = '/overview_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentSucessScreen = '/payment_sucess_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    dashboardOneScreen: (context) => DashboardOneScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    newListingScreen: (context) => NewListingScreen(),
    capturePhotoScreen: (context) => CapturePhotoScreen(),
    reviewImageOneScreen: (context) => ReviewImageOneScreen(),
    reviewImageScreen: (context) => ReviewImageScreen(),
    reviewImageExtrasScreen: (context) => ReviewImageExtrasScreen(),
    overviewScreen: (context) => OverviewScreen(),
    paymentScreen: (context) => PaymentScreen(),
    paymentSucessScreen: (context) => PaymentSucessScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
