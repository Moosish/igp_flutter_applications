import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 55.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ALGOVEST",
                style: CustomTextStyles.displayMediumOnErrorContainer,
              ),
              SizedBox(height: 37.v),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.accountSummaryPage);
                },
                child: CustomOutlinedButton(
                  text: "ENTER",
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }
}
