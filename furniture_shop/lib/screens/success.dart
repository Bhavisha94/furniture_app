import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .2),
            SvgPicture.asset('assets/images/success.svg'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'SUCCESS',
              style: textStyle.copyWith(
                  fontSize: 18,
                  color: ColorUtils.gray01,
                  fontWeight: FontWeight.w700),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .05),
            SizedBox(
              width: 245,
              child: Text(
                'Thank you your debit card has been added. You can easily shop with My Pay, Top Up now!',
                textAlign: TextAlign.center,
                style:
                    textStyle.copyWith(fontSize: 12, color: ColorUtils.gray02),
              ),
            ),
            const Spacer(),
            Button(
                width: MediaQuery.of(context).size.width * .85,
                height: MediaQuery.of(context).size.height * .06,
                text: 'Continue',
                color: ColorUtils.yellow,
                fontSize: 14),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
          ],
        ),
      ),
    );
  }
}
