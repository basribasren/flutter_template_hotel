import '../notifications_screen/widgets/sectionlist_item_widget.dart';import 'bloc/notifications_bloc.dart';import 'models/notifications_model.dart';import 'models/sectionlist_item_model.dart';import 'package:basri_s_application17/core/app_export.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application17/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application17/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:grouped_list/grouped_list.dart';class NotificationsScreen extends StatelessWidget {const NotificationsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<NotificationsBloc>(create: (context) => NotificationsBloc(NotificationsState(notificationsModelObj: NotificationsModel()))..add(NotificationsInitialEvent()), child: NotificationsScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.fromLTRB(24.h, 31.v, 24.h, 5.v), child: BlocSelector<NotificationsBloc, NotificationsState, NotificationsModel?>(selector: (state) => state.notificationsModelObj, builder: (context, notificationsModelObj) {return GroupedListView<SectionlistItemModel, String>(shrinkWrap: true, stickyHeaderBackgroundColor: Colors.transparent, elements: notificationsModelObj?.sectionlistItemList ?? [], groupBy: (element) => element.groupBy!, sort: false, groupSeparatorBuilder: (String value) {return Padding(padding: EdgeInsets.only(top: 25.v, bottom: 22.v), child: Text(value, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.whiteA700)));}, itemBuilder: (context, model) {return SectionlistItemWidget(model);}, separator: SizedBox(height: 24.v));})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_notifications".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgClock, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 13.v))]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
