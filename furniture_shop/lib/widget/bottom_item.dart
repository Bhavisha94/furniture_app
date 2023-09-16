// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop/utils/colors.dart';

class BottomItem extends StatelessWidget {
  final int index;
  final int itemIndex;
  final VoidCallback? onCallBack;
  final String image;
  const BottomItem(
      {super.key,
      required this.index,
      required this.itemIndex,
      this.onCallBack,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
            color: index == itemIndex ? ColorUtils.dotColor : ColorUtils.white,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: SvgPicture.asset(
          'assets/images/$image.svg',
          color: index == itemIndex ? ColorUtils.white : ColorUtils.dotColor,
        )),
      ),
    );
  }
}
