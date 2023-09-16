import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';

class SocilaLogin extends StatelessWidget {
  final String icon;
  final VoidCallback? onCallBack;
  const SocilaLogin({super.key, required this.icon, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: ColorUtils.yellow, width: 1)),
        child: Center(
          child: SvgPicture.asset('assets/images/$icon.svg'),
        ),
      ),
    );
  }
}
