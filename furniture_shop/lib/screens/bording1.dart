import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/style.dart';

class Bording1 extends StatelessWidget {
  const Bording1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bording1.png'),
              fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            right: MediaQuery.of(context).size.width * .4,
            top: MediaQuery.of(context).size.height * .51,
            child: SvgPicture.asset('assets/images/line.svg'),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .443,
            right: MediaQuery.of(context).size.width * .07,
            child: Container(
              width: 154,
              height: 70,
              decoration: BoxDecoration(
                  color: ColorUtils.white,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Comfort Chair',
                    style: textStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.shadeBB,
                        fontSize: 14),
                  ),
                  Text(
                    '\$130',
                    style: textStyle.copyWith(
                        fontSize: 20, color: ColorUtils.shadeGray4),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * .36,
            top: MediaQuery.of(context).size.height * .56,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorUtils.white.withOpacity(.64)),
              child: Center(
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorUtils.shadeGray4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
