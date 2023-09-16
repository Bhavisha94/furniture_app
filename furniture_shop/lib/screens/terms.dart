import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar:
          AppBarWidget.appBar(title: 'Terms and Conditions', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
                'Phasellus fermentum congue imperdiet. Suspendisse pharetra sem purus.'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: text(
                  'Nam accumsan erat arcu, imperdiet sodales lorem vulputate ligula.'),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: text(
                  'Duis vestibulum libero eget massa convallis efficitur.'),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: text(
                  'Donec sit amet accumsan ligula, et auctor diam amet libero eleifend vel.'),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: text(
                  'Nullam egestas enim vitae nibh dictum, in congue metus.'),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: text(
                  'Curabitur at leo metus. Vivamus efficitur lectus vel aliquet dui non consectetur.'),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Service',
                  style: textStyle.copyWith(
                      fontSize: 15, color: ColorUtils.shadeGray4),
                ),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            text(
                'Sed rhoncus urna in eros hendrerit auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nec tempor mi. Nulla efficitur, nunc quis placerat rutrum, odio ligula elementum erat, nec rutrum nibh nisi non tellus. Proin mattis risus nisl, ac semper mi posuere eget. Fusce quis faucibus mauris. Vivamus mattis augue non cursus condimentum. Duis odio leo, mollis ac nunc sit amet, tincidunt porta ligula. Class aptent taciti sociosqu ad litora torquent per.')
          ],
        ),
      ),
    );
  }

  Text text(String text) {
    return Text(
      text,
      style: textStyle.copyWith(color: ColorUtils.gray03, fontSize: 12),
    );
  }
}
