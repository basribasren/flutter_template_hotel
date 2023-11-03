import 'bloc/profile_settings_bloc.dart';import 'models/profile_settings_model.dart';import 'package:basri_s_application17/core/app_export.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application17/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application17/widgets/custom_elevated_button.dart';import 'package:basri_s_application17/widgets/custom_switch.dart';import 'package:flutter/material.dart';class ProfileSettingsPage extends StatelessWidget {const ProfileSettingsPage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ProfileSettingsBloc>(create: (context) => ProfileSettingsBloc(ProfileSettingsState(profileSettingsModelObj: ProfileSettingsModel()))..add(ProfileSettingsInitialEvent()), child: ProfileSettingsPage()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildProfile(context), SizedBox(height: 60.v), CustomElevatedButton(height: 28.v, width: 134.h, text: "lbl_edit_profile".tr, leftIcon: Container(margin: EdgeInsets.only(right: 20.h), child: CustomImageView(imagePath: ImageConstant.imgUser, height: 28.adaptSize, width: 28.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1, onPressed: () {onTapEditProfile(context);}), SizedBox(height: 30.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgIconlyCurvedWallet, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v), child: Text("lbl_payment".tr, style: CustomTextStyles.titleMediumSemiBold_1))]), SizedBox(height: 30.v), CustomElevatedButton(height: 28.v, width: 148.h, text: "lbl_notifications".tr, leftIcon: Container(margin: EdgeInsets.only(right: 20.h), child: CustomImageView(imagePath: ImageConstant.imgIcons, height: 28.adaptSize, width: 28.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1, onPressed: () {onTapNotifications(context);}), SizedBox(height: 30.v), CustomElevatedButton(height: 28.v, width: 114.h, text: "lbl_security".tr, leftIcon: Container(margin: EdgeInsets.only(right: 20.h), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkWhiteA700, height: 28.adaptSize, width: 28.adaptSize)), buttonStyle: CustomButtonStyles.none, buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1, onPressed: () {onTapSecurity(context);}), SizedBox(height: 30.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgIconlyCurvedInfo, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v), child: Text("lbl_help".tr, style: CustomTextStyles.titleMediumSemiBold_1))]), SizedBox(height: 30.v), _buildDarkTheme(context), SizedBox(height: 30.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgRefresh, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 5.v), child: Text("lbl_logout".tr, style: CustomTextStyles.titleMediumRed400))]), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 50.v, leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGoogle, margin: EdgeInsets.only(left: 24.h, top: 9.v, bottom: 9.v), onTap: () {onTapGoogle(context);}), title: AppbarTitle(text: "lbl_profile".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgClock, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildProfile(BuildContext context) { return Column(children: [SizedBox(height: 120.adaptSize, width: 120.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse120x120, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(60.h), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgEdit, height: 30.adaptSize, width: 30.adaptSize, alignment: Alignment.bottomRight)])), SizedBox(height: 10.v), Text("lbl_daniel_austin".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 11.v), Text("lbl_uder_domain_com".tr, style: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildDarkTheme(BuildContext context) { return Row(children: [CustomImageView(imagePath: ImageConstant.imgEye, height: 28.adaptSize, width: 28.adaptSize), Padding(padding: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 3.v), child: Text("lbl_dark_theme".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Spacer(), BlocSelector<ProfileSettingsBloc, ProfileSettingsState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(value: isSelectedSwitch, onChange: (value) {context.read<ProfileSettingsBloc>().add(ChangeSwitchEvent(value: value));});})]); } 
/// Opens a URL in the device's default web browser.
///
/// The [context] parameter is the `BuildContext` of the widget that invoked the function.
///
/// Throws an exception if the URL could not be launched.
onTapGoogle(BuildContext context) async  { var url = 'https://accounts.google.com/';if(!await launch(url)) {throw 'Could not launch https://accounts.google.com/';} } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapEditProfile(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
/// Navigates to the notificationSettingsScreen when the action is triggered.
onTapNotifications(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationSettingsScreen, ); } 
/// Navigates to the securityScreen when the action is triggered.
onTapSecurity(BuildContext context) { NavigatorService.pushNamed(AppRoutes.securityScreen, ); } 
 }
