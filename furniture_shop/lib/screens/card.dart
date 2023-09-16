import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/cart_otp.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/textfield.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.appBar(title: 'debit Card', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add A debit Card',
              style: textStyle.copyWith(
                  fontSize: 20, color: ColorUtils.shadeGray4),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .03),
            const TextFieldWidget(
              obsecure: false,
              hintText: 'Account name',
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                  color: ColorUtils.gray04,
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bank',
                    style: textStyle.copyWith(color: ColorUtils.gray03),
                  ),
                  SvgPicture.asset('assets/images/down.svg')
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const TextFieldWidget(
              obsecure: false,
              hintText: 'Account number',
              textInputType: TextInputType.number,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  width: 152,
                  child: TextFieldWidget(
                    obsecure: false,
                    hintText: 'Expire',
                  ),
                ),
                SizedBox(
                  width: 152,
                  child: TextFieldWidget(
                    obsecure: false,
                    hintText: 'Security code',
                  ),
                )
              ],
            ),
            const Spacer(),
            Button(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .06,
              text: 'ADD CARD',
              color: ColorUtils.yellow,
              fontSize: 14,
              onCallBack: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const CardOTP())),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
          ],
        ),
      ),
    );
  }
}
