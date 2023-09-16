import 'package:flutter/material.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child:
                      Icon(Icons.close, size: 20, color: ColorUtils.shadeGray4),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .06),
            menu(menu: 'Living Room', trailing: const SizedBox()),
            menu(menu: 'Bedroom', trailing: const Icon(Icons.add)),
            menu(menu: 'Dining Room', trailing: const SizedBox()),
            menu(menu: 'Kitchen', trailing: const SizedBox()),
            menu(menu: 'Lamp', trailing: const SizedBox()),
            menu(menu: 'Chair', trailing: const SizedBox()),
            menu(menu: 'Sofa', trailing: const SizedBox())
          ],
        ),
      ),
    );
  }

  Widget menu({required String menu, required Widget trailing}) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: Text(
                  menu,
                  style: textStyle.copyWith(
                      fontSize: 16, color: ColorUtils.shadeGray4),
                ),
              ),
              trailing
            ],
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .02),
        ],
      ),
    );
  }
}
