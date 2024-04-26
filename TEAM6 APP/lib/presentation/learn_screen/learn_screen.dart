import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../account_summary_page/account_summary_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LearnScreen extends StatelessWidget {
  LearnScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildWatchOurColumn(context),
              SizedBox(height: 11.v),
              Expanded(
                child: Container(
                  width: 342.h,
                  margin: EdgeInsets.symmetric(horizontal: 9.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlineBlack9003,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "Chart Layout",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      Spacer(
                        flex: 35,
                      ),
                      Text(
                        "Strategy Testing",
                        style: theme.textTheme.headlineLarge,
                      ),
                      Spacer(
                        flex: 34,
                      ),
                      Text(
                        "Advanced Analysis",
                        style: theme.textTheme.headlineLarge,
                      ),
                      Spacer(
                        flex: 29,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWatchOurColumn(BuildContext context) {
    return SizedBox(
      height: 146.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 60.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillOnErrorContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8.v),
                  Text(
                    "Watch Our Tutorials",
                    style: theme.textTheme.headlineSmall,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 81.v,
              width: 358.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomAppBar(
                    title: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 44.v,
                        bottom: 7.v,
                      ),
                      child: Row(
                        children: [
                          AppbarSubtitle(
                            text: "SIGN OUT",
                            margin: EdgeInsets.only(top: 8.v),
                            onTap: () {
                              onTapSignout(context);
                            },
                          ),
                          AppbarTitle(
                            text: "ALGOVEST",
                            margin: EdgeInsets.only(
                              left: 59.h,
                              bottom: 3.v,
                            ),
                            onTap: () {
                              onTapPrice(context);
                            },
                          )
                        ],
                      ),
                    ),
                    styleType: Style.bgFill,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMenu,
                    height: 43.v,
                    width: 26.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 13.h),
                    onTap: () {
                      onTapImgMenuone(context);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Account:
        return AppRoutes.accountSummaryPage;
      case BottomBarEnum.Invest:
        return "/";
      case BottomBarEnum.Withdraw:
        return "/";
      case BottomBarEnum.Learn:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.accountSummaryPage:
        return AccountSummaryPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapPrice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapImgMenuone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userProfileScreen);
  }
}
