import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/cart.dart';
import 'package:furniture_shop/screens/change_location.dart';
import 'package:furniture_shop/screens/login.dart';
import 'package:furniture_shop/screens/my_account.dart';
import 'package:furniture_shop/screens/my_cart.dart';
import 'package:furniture_shop/screens/setting.dart';
import 'package:furniture_shop/screens/support.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.close,
                color: ColorUtils.shadeGray4,
                size: 25,
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            ListTile(
              leading: Container(
                width: 51,
                height: 51,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile_img.png'),
                        fit: BoxFit.fill)),
              ),
              title: Text(
                'Ali Ahmed',
                style:
                    textStyle.copyWith(fontSize: 15, color: ColorUtils.yellow),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            menu(
              context,
              'my_account',
              'My account',
              () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MyAccount())),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            menu(
              context,
              'settings',
              'Settings',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Settings())),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            menu(
              context,
              'payments',
              'payments',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const MyCart())),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            menu(
              context,
              'location',
              'Location',
              () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ChangeLocation())),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            menu(
              context,
              'support',
              'Support',
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Support())),
            ),
            const Spacer(),
            InkWell(
              onTap: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const Login()),
                  (route) => false),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/logout.svg'),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                  Text(
                    'Log Out',
                    style: textStyle.copyWith(
                        fontSize: 15, color: const Color(0xffCCCCCC)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding menu(
      BuildContext context, String image, String title, VoidCallback? onTap) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .13),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              width: 20,
              child: SvgPicture.asset('assets/images/$image.svg'),
            ),
            SizeUtils.horizontalSpacing(width: 10),
            Text(
              title,
              style: textStyle.copyWith(
                  fontSize: 15, color: ColorUtils.shadeGray4),
            )
          ],
        ),
      ),
    );
  }
}
