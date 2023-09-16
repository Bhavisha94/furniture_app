import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/appbar.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBar(title: 'Privacy Policy', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Column(
          children: [
            Text(
              'Donec quam quam, consequat ut est sit amet, tincidunt bibendum orci. Vestibulum in volutpat risus. Donec vestibulum sagittis leo, ut iaculis dolor ultrices vel. Praesent mauris justo, suscipit id venenatis id, dignissim ac justo. Praesent pellentesque vel lacus vitae iaculis. Donec efficitur placerat nulla sodales consectetur.',
              style: textStyle.copyWith(fontSize: 12, color: ColorUtils.gray03),
            ),
            Text(
              'Sed rhoncus urna in eros hendrerit auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nec tempor mi. Nulla efficitur, nunc quis placerat rutrum, odio ligula elementum erat, nec rutrum nibh nisi non tellus.',
              style: textStyle.copyWith(fontSize: 12, color: ColorUtils.gray03),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Text(
              'Sed Malesuade',
              style: textStyle.copyWith(
                  color: ColorUtils.shadeGray4, fontSize: 15),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Text(
              'Mauris felis felis, malesuada a est vitae, ultricies ullamcorper orci. Sed malesuada imperdiet velit ac tincidunt. Integer quis est a arcu tempor facilisis. Integer ullamcorper justo gravida turpis posuere fermentum. Sed viverra lacus odio, id condimentum magna consectetur ac. Curabitur facilisis, ante ac imperdiet tempus, nulla tortor egestas lorem, id tempus libero nisi quis magna. Aenean euismod dolor a turpis.',
              style: textStyle.copyWith(fontSize: 12, color: ColorUtils.gray03),
            )
          ],
        ),
      ),
    );
  }
}
