import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "RegistrationScreen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DonationReqFormScreen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.donationreqformscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AdminPortal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.adminportalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LoginScreen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "UserProfile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.userprofileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DonationForm",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.donationformScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DonationList",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.donationlistScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ClothesCareSearch",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.clothescaresearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FeedbackForm",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.feedbackformScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
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
                  color: Color(0XFF000000),
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
                  color: Color(0XFF888888),
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
            color: Color(0XFF000000),
          ),
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
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
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
                    color: Color(0XFF000000),
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
              color: Color(0XFF888888),
            ),
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
