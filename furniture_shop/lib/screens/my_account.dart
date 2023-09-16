import 'package:flutter/material.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/textfield.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.appBar(title: 'My account', context: context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            children: [
              Container(
                  width: 127,
                  height: 127,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile_img.png')))),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Text(
                'Change your profile photo',
                style:
                    textStyle.copyWith(color: ColorUtils.yellow, fontSize: 12),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .035),
              const TextFieldWidget(
                obsecure: false,
                hintText: 'Ali Ahmed',
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TextFieldWidget(
                obsecure: false,
                hintText: '123 4567890',
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TextFieldWidget(
                obsecure: false,
                hintText: 'male',
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .15),
              Button(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .06,
                  text: 'Done',
                  color: ColorUtils.shadeGray4,
                  fontSize: 14)
            ],
          ),
        ),
      ),
    );
  }
}
