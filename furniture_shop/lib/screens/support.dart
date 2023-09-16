import 'package:flutter/material.dart';
import 'package:furniture_shop/screens/feedback.dart';
import 'package:furniture_shop/screens/privacy_policy.dart';
import 'package:furniture_shop/screens/terms.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/widget/button.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBar(title: 'Support', context: context),
      backgroundColor: ColorUtils.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .11),
            Text(
              'Support',
              style: textStyle.copyWith(
                  fontSize: 16, color: ColorUtils.shadeGray4),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            option(context, 'Help', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const FeedBack()));
            }),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            option(context, 'Terms and Conditions', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Terms()));
            }),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            option(context, 'Privacy Policy', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const PrivacyPolicy()));
            }),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .15),
            Button(
              width: MediaQuery.of(context).size.width * .85,
              height: MediaQuery.of(context).size.height * .06,
              text: 'Done',
              color: ColorUtils.shadeGray4,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }

  option(BuildContext context, String text, VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: ColorUtils.gray04),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              text,
              style: textStyle.copyWith(
                  fontSize: 14,
                  color: ColorUtils.gray03,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    );
  }
}
