import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../account_summary_page/account_summary_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStackCustomer(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgLeftArrow,
                      height: 31.v,
                      width: 32.h,
                      margin: EdgeInsets.only(left: 2.h),
                      onTap: () {
                        onTapImgLeftarrowone(context);
                      },
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "Jane Doe",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "jdoe@emaildomain.com",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.h),
                      child: _buildRowSpacerOne(
                        context,
                        description:
                            "Address:\n\n1 Million Way\nRich Town\nFerrarishire\nRR22 1BB",
                        editOne: "EDIT",
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.h),
                      child: _buildRowSpacerOne(
                        context,
                        description:
                            "Contact Number:\nMobile:              07412345678\n\nAlternative:    07487654321",
                        editOne: "EDIT",
                      ),
                    ),
                    SizedBox(height: 23.v),
                    _buildColumnInvestment(context),
                    SizedBox(height: 22.v),
                    _buildColumnRiskTolerance(context)
                  ],
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
  Widget _buildStackCustomer(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: 80.v,
                right: 165.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillOnPrimary,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNavAccount,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "PROFILE",
                      style: CustomTextStyles.titleMediumBlack90017,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 195.h,
                top: 80.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillBlueGray,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapTxtSettingstwo(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "SETTINGS",
                        style: CustomTextStyles.titleMediumBlack90017,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 81.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomAppBar(
                    title: Padding(
                      padding: EdgeInsets.only(
                        left: 18.h,
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
                    margin: EdgeInsets.only(right: 15.h),
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
  Widget _buildColumnInvestment(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsets.fromLTRB(10.h, 7.v, 10.h, 6.v),
      decoration: AppDecoration.outlineBlack9001,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Investment Goal:",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWeakFinancialGrowth,
                  height: 22.v,
                  width: 21.h,
                  margin: EdgeInsets.only(
                    top: 11.v,
                    bottom: 28.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 14.v,
                    bottom: 28.v,
                  ),
                  child: Text(
                    "Grow",
                    style: CustomTextStyles.titleMediumBlack900SemiBold_3,
                  ),
                ),
                Spacer(
                  flex: 48,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHome,
                  height: 22.v,
                  width: 21.h,
                  margin: EdgeInsets.only(
                    top: 11.v,
                    bottom: 28.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15.v,
                    bottom: 26.v,
                  ),
                  child: Text(
                    "Buy",
                    style: CustomTextStyles.titleMediumBlack900SemiBold_2,
                  ),
                ),
                Spacer(
                  flex: 51,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 82.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgWomanSunbathing,
                            height: 31.v,
                            width: 30.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 13.v),
                            child: Text(
                              "Retire",
                              style:
                                  CustomTextStyles.titleMediumBlack900SemiBold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 59.h,
                      child: Divider(
                        indent: 12.h,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "EDIT",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgForward,
                            height: 18.v,
                            width: 17.h,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnRiskTolerance(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6.h),
      padding: EdgeInsets.fromLTRB(11.h, 8.v, 11.h, 7.v),
      decoration: AppDecoration.outlineBlack9001,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 68.h,
            child: Text(
              "Risk Tolerance:",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 37.h,
            ),
            child: Row(
              children: [
                Text(
                  "High",
                  style: CustomTextStyles.titleMediumBlack900SemiBold_1,
                ),
                Spacer(
                  flex: 59,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Medium",
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                    SizedBox(
                      width: 51.h,
                      child: Divider(
                        indent: 3.h,
                      ),
                    )
                  ],
                ),
                Spacer(
                  flex: 40,
                ),
                Text(
                  "Low",
                  style: CustomTextStyles.titleMediumBlack900SemiBold_1,
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "EDIT",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgForward,
                  height: 18.v,
                  width: 17.h,
                )
              ],
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

  /// Common widget
  Widget _buildRowSpacerOne(
    BuildContext context, {
    required String description,
    required String editOne,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(11.h, 2.v, 11.h, 1.v),
      decoration: AppDecoration.outlineBlack9001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 113.h,
            margin: EdgeInsets.only(top: 6.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Contact Number:\n",
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "Mobile:              ",
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                  TextSpan(
                    text: "07412345678\n\n",
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "Alternative:    07487654321",
                    style: CustomTextStyles.titleSmallBlack900,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 85.v,
              bottom: 5.v,
            ),
            child: Text(
              editOne,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.colorScheme.errorContainer,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgForward,
            height: 18.v,
            width: 17.h,
            margin: EdgeInsets.only(
              top: 84.v,
              bottom: 6.v,
            ),
          )
        ],
      ),
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
  onTapTxtSettingstwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapPrice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the accountSummaryContainerScreen when the action is triggered.
  onTapImgLeftarrowone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountSummaryContainerScreen);
  }
}
