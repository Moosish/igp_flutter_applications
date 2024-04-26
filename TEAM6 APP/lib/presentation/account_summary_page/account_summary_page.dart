import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AccountSummaryPage extends StatelessWidget {
  AccountSummaryPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHeaderBar(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSearchView(
                      controller: searchController,
                      hintText: "Search...",
                    ),
                    SizedBox(height: 15.v),
                    _buildAccountSummary(context),
                    SizedBox(height: 16.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 16.v,
                            width: 74.h,
                            margin: EdgeInsets.only(top: 1.v),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "1D",
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Change Over:",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 19.v,
                            width: 30.h,
                            margin: EdgeInsets.only(left: 5.h),
                            decoration: BoxDecoration(
                              color: appTheme.black900,
                              border: Border.all(
                                color: appTheme.black900,
                                width: 1.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.25),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.v),
                    _buildColumncash(context),
                    SizedBox(height: 18.v),
                    _buildUpOne(context),
                    SizedBox(height: 18.v),
                    _buildUpTwo(context),
                    SizedBox(height: 18.v),
                    _buildUpThree(context),
                    SizedBox(height: 18.v),
                    _buildUpFour(context),
                    SizedBox(height: 5.v)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderBar(BuildContext context) {
    return SizedBox(
      height: 89.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomAppBar(
            height: 84.v,
            title: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 50.v,
                bottom: 10.v,
              ),
              child: Row(
                children: [
                  AppbarSubtitle(
                    text: "SIGN OUT",
                    margin: EdgeInsets.only(top: 7.v),
                    onTap: () {
                      onTapSignout(context);
                    },
                  ),
                  AppbarTitle(
                    text: "ALGOVEST",
                    margin: EdgeInsets.only(
                      left: 59.h,
                      bottom: 2.v,
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
            height: 48.v,
            width: 26.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 16.h),
            onTap: () {
              onTapImgMenuone(context);
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountSummary(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Account Summary",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 2.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "£15,546.",
                          style: CustomTextStyles.displayMediumRegular,
                        ),
                        TextSpan(
                          text: "32",
                          style: CustomTextStyles.headlineSmallRegular,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Account Balance",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCoins,
                              height: 35.v,
                              width: 36.h,
                              alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 1.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Invest",
                                style: theme.textTheme.bodyMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRequestMoney,
                              height: 35.v,
                              width: 36.h,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "Withdraw",
                              style: theme.textTheme.bodyMedium,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBackgroundRemover,
                            height: 35.v,
                            width: 36.h,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "Analyse",
                            style: theme.textTheme.bodyMedium,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMoreThan,
                              height: 35.v,
                              width: 36.h,
                              onTap: () {
                                onTapImgMorethanone(context);
                              },
                            ),
                            SizedBox(height: 1.v),
                            GestureDetector(
                              onTap: () {
                                onTapTxtMore(context);
                              },
                              child: Text(
                                "More",
                                style: theme.textTheme.bodyMedium,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncash(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 4.h,
      ),
      padding: EdgeInsets.fromLTRB(10.h, 5.v, 10.h, 4.v),
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: _buildRowDigitalAsset(
              context,
              digitalAssetsText: "Cash",
              priceText: "£  2,000.00",
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Shares",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "£10,000.00",
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: _buildRowDigitalAsset(
              context,
              digitalAssetsText: "Digital Assets",
              priceText: "£  3,546.32",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 22.h,
      ),
      child: Row(
        children: [
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                17.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withOpacity(0.25),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    6,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 8.v,
            ),
            child: Text(
              "Nvidia",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(
            flex: 64,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUp1,
            height: 35.adaptSize,
            width: 35.adaptSize,
          ),
          Spacer(
            flex: 35,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 4.v,
            ),
            child: Text(
              "£2,000.00",
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 22.h,
      ),
      child: Row(
        children: [
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                17.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withOpacity(0.25),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    6,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 10.v,
              bottom: 8.v,
            ),
            child: Text(
              "Amazon",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(
            flex: 62,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUp1,
            height: 35.adaptSize,
            width: 35.adaptSize,
          ),
          Spacer(
            flex: 37,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 10.v,
            ),
            child: Text(
              "£2,000.00",
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 22.h,
      ),
      child: Row(
        children: [
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                17.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withOpacity(0.25),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    6,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 8.v,
            ),
            child: Text(
              "Microsoft",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(
            flex: 58,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUp1,
            height: 35.adaptSize,
            width: 35.adaptSize,
          ),
          Spacer(
            flex: 41,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 10.v,
            ),
            child: Text(
              "£2,000.00",
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 22.h,
      ),
      child: Row(
        children: [
          Container(
            height: 35.adaptSize,
            width: 35.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                17.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withOpacity(0.25),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    6,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 8.v,
            ),
            child: Text(
              "Bitcoin",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(
            flex: 63,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUp1,
            height: 35.adaptSize,
            width: 35.adaptSize,
          ),
          Spacer(
            flex: 36,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 10.v,
            ),
            child: Text(
              "£1,500.00",
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowDigitalAsset(
    BuildContext context, {
    required String digitalAssetsText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          digitalAssetsText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          priceText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
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

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapImgMorethanone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userProfileScreen);
  }

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapTxtMore(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userProfileScreen);
  }
}
