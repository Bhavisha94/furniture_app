import 'package:flutter/material.dart';
import 'package:furniture_shop/utils/colors.dart';

class RateWidget extends StatelessWidget {
  final Color? color;
  const RateWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          color: ColorUtils.white, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Icon(
          Icons.star,
          size: 15,
          color: color ?? ColorUtils.shadeDBDEE4,
        ),
      ),
    );
  }
}
