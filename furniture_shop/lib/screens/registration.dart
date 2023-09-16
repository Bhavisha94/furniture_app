import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/dashboard.dart';
import 'package:furniture_shop/screens/login.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/social_btn.dart';
import 'package:furniture_shop/widget/textfield.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                SvgPicture.asset('assets/images/logo2.svg'),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .05),
                const TextFieldWidget(
                  obsecure: false,
                  hintText: 'Name',
                  textInputType: TextInputType.name,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                const TextFieldWidget(
                  obsecure: false,
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                const TextFieldWidget(
                  obsecure: false,
                  hintText: 'Phone',
                  textInputType: TextInputType.phone,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                const TextFieldWidget(
                  obsecure: true,
                  hintText: 'YPassword',
                  textInputType: TextInputType.emailAddress,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                const TextFieldWidget(
                  obsecure: true,
                  hintText: 'Confirm Password',
                  textInputType: TextInputType.emailAddress,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .05),
                Button(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .066,
                  text: 'Signup',
                  color: ColorUtils.yellow,
                  onCallBack: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                      (route) => false),
                  fontSize: 14,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .05),
                Text(
                  'Sign In with social media',
                  style: textStyle.copyWith(
                      fontFamily: 'Inter',
                      color: ColorUtils.gray,
                      fontSize: 16),
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
                    height: MediaQuery.of(context).size.height * .05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'have Account ',
                      style: textStyle.copyWith(
                          fontSize: 12,
                          color: ColorUtils.shadeGray4.withOpacity(.5)),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login())),
                      child: Text(
                        'LOGIN',
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
      ),
    );
  }
}
