import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Account, Invest, Withdraw, Learn }
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavAccount,
      activeIcon: ImageConstant.imgNavAccount,
      title: "Account",
      type: BottomBarEnum.Account,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCoins,
      activeIcon: ImageConstant.imgCoins,
      title: "Invest",
      type: BottomBarEnum.Invest,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBackgroundRemover,
      activeIcon: ImageConstant.imgBackgroundRemover,
      title: "Account",
      type: BottomBarEnum.Account,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRequestMoney,
      activeIcon: ImageConstant.imgRequestMoney,
      title: "Withdraw",
      type: BottomBarEnum.Withdraw,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGraduationCap,
      activeIcon: ImageConstant.imgGraduationCap,
      title: "Learn",
      type: BottomBarEnum.Learn,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.v,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 17.v,
                  width: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                )
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 20.v,
                  width: 18.h,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.black900,
                  ),
                )
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
