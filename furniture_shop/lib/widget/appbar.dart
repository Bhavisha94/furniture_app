import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/style.dart';

class AppBarWidget {
  static appBar(
      {required String title,
      List<Widget>? action,
      required BuildContext context}) {
    return AppBar(
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset('assets/images/back.svg'),
        ),
      ),
      leadingWidth: 30,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: textStyle.copyWith(
            fontSize: 16,
            color: ColorUtils.shadeGray4,
            fontWeight: FontWeight.w600),
      ),
      actions: action,
    );
  }

  static appBarText({String? title, List<Widget>? action}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title.toString(),
        style: textStyle.copyWith(
            fontSize: 16,
            color: ColorUtils.shadeGray4,
            fontWeight: FontWeight.w600),
      ),
      actions: action,
    );
  }
}
