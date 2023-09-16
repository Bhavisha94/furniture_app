import 'package:flutter/material.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/style.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback? onCallBack;
  final Color color;
  final double fontSize;
  const Button(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.color,
      this.onCallBack,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: color),
        child: Center(
          child: Text(
            text,
            style: textStyle.copyWith(
                color: ColorUtils.white,
                fontWeight: FontWeight.bold,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
