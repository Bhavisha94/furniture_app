import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/dashboard.dart';
import 'package:furniture_shop/screens/forget_password.dart';
import 'package:furniture_shop/screens/registration.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/social_btn.dart';
import 'package:furniture_shop/widget/textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .1),
              SvgPicture.asset('assets/images/logo.svg'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .05),
              const TextFieldWidget(
                obsecure: false,
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              const TextFieldWidget(
                obsecure: true,
                hintText: 'Password',
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassword())),
                  child: Text(
                    'Forgot Password?',
                    style: textStyle.copyWith(
                        color: ColorUtils.yellow,
                        fontSize: 11,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: ColorUtils.shadeD8D8D8)),
                      child: Checkbox(
                        value: true,
                        activeColor: Colors.transparent,
                        checkColor: ColorUtils.yellow,
                        side: const BorderSide(color: Colors.black),
                        onChanged: (value) {},
                      ),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .02),
                    Text(
                      'Remember Me',
                      style: textStyle.copyWith(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: ColorUtils.shadeABB1C0),
                    )
                  ],
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Button(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .066,
                text: 'Login',
                color: ColorUtils.yellow,
                onCallBack: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                    (route) => false),
                fontSize: 14,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .05),
              Text(
                'Login with social media',
                style: textStyle.copyWith(
                    fontFamily: 'Inter', color: ColorUtils.gray, fontSize: 16),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SocilaLogin(icon: 'g'),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                  const SocilaLogin(icon: 'f'),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                  const SocilaLogin(icon: 't')
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have Account ',
                    style: textStyle.copyWith(
                        fontSize: 12,
                        color: ColorUtils.shadeGray4.withOpacity(.5)),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Registration())),
                    child: Text(
                      'Sign up',
                      style: textStyle.copyWith(
                          color: ColorUtils.yellow,
                          fontSize: 12,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
