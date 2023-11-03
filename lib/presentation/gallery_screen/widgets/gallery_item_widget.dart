import '../models/gallery_item_model.dart';
import 'package:basri_s_application17/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  GalleryItemWidget(
    this.galleryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalleryItemModel galleryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: galleryItemModelObj?.rectangle,
      height: 140.v,
      width: 182.h,
      radius: BorderRadius.circular(
        12.h,
      ),
    );
  }
}
