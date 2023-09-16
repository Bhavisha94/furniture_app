import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/textfield.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SvgPicture.asset('assets/images/back.svg'),
          ),
        ),
        leadingWidth: 30,
        title: Text('Forget password',
            style: textStyle.copyWith(
                color: ColorUtils.shadeGray4,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              SvgPicture.asset('assets/images/logo.svg'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .05),
              const TextFieldWidget(
                obsecure: false,
                hintText: 'Your Email address',
                textInputType: TextInputType.emailAddress,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TextFieldWidget(
                obsecure: true,
                hintText: 'Your new Password',
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TextFieldWidget(
                obsecure: true,
                hintText: 'Confirm Password',
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .07),
              Button(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .066,
                color: ColorUtils.yellow,
                text: 'Signup',
                fontSize: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
