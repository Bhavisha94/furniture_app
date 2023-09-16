import 'package:flutter/material.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:furniture_shop/widget/textfield.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.appBar(title: 'Settings', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Text(
              'Email',
              style: textStyle.copyWith(
                  fontSize: 15, color: ColorUtils.shadeGray4),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const TextFieldWidget(
              obsecure: false,
              textInputType: TextInputType.emailAddress,
              hintText: 'Email',
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'Change password',
              style: textStyle.copyWith(
                  fontSize: 15, color: ColorUtils.shadeGray4),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const TextFieldWidget(
              obsecure: true,
              hintText: 'Password',
            ),
            const Spacer(),
            Button(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .06,
                text: 'Done',
                color: ColorUtils.shadeGray4,
                fontSize: 13),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035)
          ],
        ),
      ),
    );
  }
}
