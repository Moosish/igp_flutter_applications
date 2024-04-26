import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/account_summary_container_screen/account_summary_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/learn_screen/learn_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/user_profile_screen/user_profile_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String accountSummaryContainerScreen =
      '/account_summary_container_screen';

  static const String accountSummaryPage = '/account_summary_page';

  static const String userProfileScreen = '/user_profile_screen';

  static const String learnScreen = '/learn_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    accountSummaryContainerScreen: (context) => AccountSummaryContainerScreen(),
    userProfileScreen: (context) => UserProfileScreen(),
    learnScreen: (context) => LearnScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LoginScreen()
  };
}
