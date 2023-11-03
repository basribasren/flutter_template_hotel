import 'bloc/create_new_password_bloc.dart';import 'models/create_new_password_model.dart';import 'package:basri_s_application17/core/app_export.dart';import 'package:basri_s_application17/core/utils/validation_functions.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application17/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application17/widgets/custom_checkbox_button.dart';import 'package:basri_s_application17/widgets/custom_elevated_button.dart';import 'package:basri_s_application17/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class CreateNewPasswordScreen extends StatelessWidget {CreateNewPasswordScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<CreateNewPasswordBloc>(create: (context) => CreateNewPasswordBloc(CreateNewPasswordState(createNewPasswordModelObj: CreateNewPasswordModel()))..add(CreateNewPasswordInitialEvent()), child: CreateNewPasswordScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 56.v), child: Column(children: [SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgImage300x300, height: 300.adaptSize, width: 300.adaptSize), SizedBox(height: 58.v), _buildForgotPassword(context)]))), bottomNavigationBar: _buildContinueButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildForgotPassword(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_create_your_new".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 23.v), BlocBuilder<CreateNewPasswordBloc, CreateNewPasswordState>(builder: (context, state) {return CustomTextFormField(controller: state.newpasswordController, hintText: "lbl".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgLockWhiteA700, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {context.read<CreateNewPasswordBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgDashboardWhiteA700, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.symmetric(vertical: 21.v));}), SizedBox(height: 24.v), BlocBuilder<CreateNewPasswordBloc, CreateNewPasswordState>(builder: (context, state) {return CustomTextFormField(controller: state.passwordController, hintText: "lbl".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgLockWhiteA700, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {context.read<CreateNewPasswordBloc>().add(ChangePasswordVisibilityEvent1(value: !state.isShowPassword1));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgDashboardWhiteA700, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword1, contentPadding: EdgeInsets.symmetric(vertical: 21.v));}), SizedBox(height: 24.v), BlocSelector<CreateNewPasswordBloc, CreateNewPasswordState, bool?>(selector: (state) => state.rememberme, builder: (context, rememberme) {return CustomCheckboxButton(text: "lbl_remember_me".tr, value: rememberme, padding: EdgeInsets.symmetric(vertical: 3.v), onChange: (value) {context.read<CreateNewPasswordBloc>().add(ChangeCheckBoxEvent(value: value));});})]); } 
/// Section Widget
Widget _buildContinueButton(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
