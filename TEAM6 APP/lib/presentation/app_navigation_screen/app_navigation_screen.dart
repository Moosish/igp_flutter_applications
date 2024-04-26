import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnErrorContainer,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "LOGIN SCREEN",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ACCOUNT SUMMARY - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.accountSummaryContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "USER PROFILE",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.userProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LEARN SCREEN",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.learnScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ACCOUNT SUMMARY PAGE",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.accountSummaryPage),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
      BuildContext context, {
        required String screenTitle,
        Function? onTapScreenTitle,
      }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
      BuildContext context,
      String routeName,
      ) {
    Navigator.pushNamed(context, routeName);
  }
}
