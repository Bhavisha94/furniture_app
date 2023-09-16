import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/success.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/otp_textfield.dart';

class CardOTP extends StatefulWidget {
  const CardOTP({super.key});

  @override
  State<CardOTP> createState() => _CardOTPState();
}

class _CardOTPState extends State<CardOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.appBar(title: 'debit Card', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Confirm code via phone number',
              style: textStyle.copyWith(fontSize: 19, color: ColorUtils.gray01),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'My Pay sends a code via sms to your phone number + 1424-XXXX-XX67, enter the code !',
              style: textStyle.copyWith(fontSize: 13, color: ColorUtils.gray02),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                OtpTextField(),
                OtpTextField(),
                OtpTextField(),
                OtpTextField(),
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'This code will expire on',
                  style: textStyle.copyWith(
                      fontSize: 12, color: ColorUtils.gray02),
                ),
                SizeUtils.horizontalSpacing(width: 05),
                Text(
                  '5 minutes',
                  style: textStyle.copyWith(
                      fontSize: 12, color: ColorUtils.shadeGray4),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .1),
            const Spacer(),
            Button(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .06,
              text: 'VERIFY CODE',
              color: ColorUtils.yellow,
              fontSize: 14,
              onCallBack: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Success())),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Button(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .06,
                text: 'RESEND CODE',
                color: ColorUtils.shadeGray4,
                fontSize: 14),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
          ],
        ),
      ),
    );
  }
}
