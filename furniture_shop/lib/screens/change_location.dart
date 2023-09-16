// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';
import 'package:furniture_shop/widget/button.dart';

class ChangeLocation extends StatefulWidget {
  const ChangeLocation({super.key});

  @override
  State<ChangeLocation> createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {
  TextEditingController controller =
      TextEditingController(text: '383 Hartway Street');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.appBar(title: 'Change Location', context: context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/map.png'),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .05),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    height: MediaQuery.of(context).size.height * .06,
                    child: TextField(
                      controller: controller,
                      style: textStyle.copyWith(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: ColorUtils.shade686E7F),
                      decoration: InputDecoration(
                          fillColor: ColorUtils.white,
                          filled: true,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none),
                          hintText: 'Location',
                          hintStyle: textStyle.copyWith(
                              fontSize: 12,
                              color: ColorUtils.shade979797,
                              fontFamily: 'Montserrat'),
                          prefixIcon: SizedBox(
                              width: 14,
                              height: 14,
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/images/search.svg',
                                  color: ColorUtils.yellow,
                                ),
                              )),
                          suffixIcon: SizedBox(
                            width: 15,
                            height: 15,
                            child: Center(
                              child:
                                  SvgPicture.asset('assets/images/cancel.svg'),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Center(
                child: Button(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .06,
                    text: 'Select Location'.toUpperCase(),
                    color: ColorUtils.yellow,
                    fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
