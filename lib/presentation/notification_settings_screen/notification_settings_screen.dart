import 'bloc/notification_settings_bloc.dart';import 'models/notification_settings_model.dart';import 'package:basri_s_application17/core/app_export.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application17/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application17/widgets/custom_switch.dart';import 'package:flutter/material.dart';class NotificationSettingsScreen extends StatelessWidget {const NotificationSettingsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<NotificationSettingsBloc>(create: (context) => NotificationSettingsBloc(NotificationSettingsState(notificationSettingsModelObj: NotificationSettingsModel()))..add(NotificationSettingsInitialEvent()), child: NotificationSettingsScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [_buildAutoLayoutHorizontal1(context), SizedBox(height: 31.v), _buildAutoLayoutHorizontal2(context), SizedBox(height: 31.v), _buildAutoLayoutHorizontal3(context), SizedBox(height: 31.v), _buildAutoLayoutHorizontal4(context), SizedBox(height: 30.v), _buildAutoLayoutHorizontal5(context), SizedBox(height: 31.v), _buildAutoLayoutHorizontal6(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_notifications".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_general_notification".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<NotificationSettingsBloc, NotificationSettingsState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(value: isSelectedSwitch, onChange: (value) {context.read<NotificationSettingsBloc>().add(ChangeSwitchEvent(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal2(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_sound".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<NotificationSettingsBloc, NotificationSettingsState, bool?>(selector: (state) => state.isSelectedSwitch1, builder: (context, isSelectedSwitch1) {return CustomSwitch(value: isSelectedSwitch1, onChange: (value) {context.read<NotificationSettingsBloc>().add(ChangeSwitch1Event(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal3(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_vibrate".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<NotificationSettingsBloc, NotificationSettingsState, bool?>(selector: (state) => state.isSelectedSwitch2, builder: (context, isSelectedSwitch2) {return CustomSwitch(value: isSelectedSwitch2, onChange: (value) {context.read<NotificationSettingsBloc>().add(ChangeSwitch2Event(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("lbl_app_updates".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<NotificationSettingsBloc, NotificationSettingsState, bool?>(selector: (state) => state.isSelectedSwitch3, builder: (context, isSelectedSwitch3) {return CustomSwitch(value: isSelectedSwitch3, onChange: (value) {context.read<NotificationSettingsBloc>().add(ChangeSwitch3Event(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_new_service_available".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<NotificationSettingsBloc, NotificationSettingsState, bool?>(selector: (state) => state.isSelectedSwitch4, builder: (context, isSelectedSwitch4) {return CustomSwitch(value: isSelectedSwitch4, onChange: (value) {context.read<NotificationSettingsBloc>().add(ChangeSwitch4Event(value: value));});})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal6(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("msg_new_tips_available".tr, style: CustomTextStyles.titleMediumSemiBold_1)), BlocSelector<NotificationSettingsBloc, NotificationSettingsState, bool?>(selector: (state) => state.isSelectedSwitch5, builder: (context, isSelectedSwitch5) {return CustomSwitch(value: isSelectedSwitch5, onChange: (value) {context.read<NotificationSettingsBloc>().add(ChangeSwitch5Event(value: value));});})]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
