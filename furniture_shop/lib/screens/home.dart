// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/drawer_screen.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/list.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/arrival_list.dart';
import 'package:furniture_shop/widget/popular_list.dart';
import 'package:furniture_shop/widget/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      key: _key,
      drawer: const DrawerMenu(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => _key.currentState!.openDrawer(),
          child: SizedBox(
            width: 22,
            height: 18,
            child: Center(child: SvgPicture.asset('assets/images/drawer.svg')),
          ),
        ),
        title: Text(
          'Home',
          style: textStyle.copyWith(
              color: ColorUtils.shadeGray4,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset('assets/images/cart_menu.svg'),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .05),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Find the best furniture',
                style: textStyle.copyWith(fontSize: 20),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SearchTextField()),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            SizedBox(
              height: 39,
              child: ListView.builder(
                itemCount: list.length,
                padding: const EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          idx = index;
                        });
                      },
                      child: Container(
                        height: 39,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: idx == index
                                ? ColorUtils.dotColor
                                : ColorUtils.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/${list[index].img}.svg',
                              color: idx == index
                                  ? ColorUtils.white
                                  : ColorUtils.shade979797,
                            ),
                            SizeUtils.horizontalSpacing(width: 10),
                            Text(
                              list[index].text,
                              style: textStyle.copyWith(
                                  fontSize: 12,
                                  color: idx == index
                                      ? ColorUtils.white
                                      : ColorUtils.shadeGray4),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Popular',
                style: textStyle.copyWith(
                    fontSize: 16, color: ColorUtils.shadeGray4),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const PopularList(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'New Arrivals',
                style: textStyle.copyWith(
                    fontSize: 16, color: ColorUtils.shadeGray4),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const ArrivalList(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
          ],
        ),
      ),
    );
  }
}
