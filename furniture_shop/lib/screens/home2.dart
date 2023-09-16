import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/drawer_screen.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/list.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/recommended_list.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
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
          SvgPicture.asset(
            'assets/images/search.svg',
            color: ColorUtils.shadeGray4,
          ),
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
              child: SizedBox(
                width: 226,
                child: Text(
                  'Discover the most modern furniture',
                  style: textStyle.copyWith(
                      fontSize: 20, color: ColorUtils.shadeGray4),
                ),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            SizedBox(
              height: 39,
              child: ListView.builder(
                itemCount: itemList.length,
                padding: const EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        idx = index;
                      });
                    },
                    child: Container(
                      height: 39,
                      padding: EdgeInsets.symmetric(
                          horizontal: index == 0 ? 25 : 15, vertical: 5),
                      decoration: BoxDecoration(
                          color: idx == index
                              ? ColorUtils.dotColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          itemList[index],
                          style: textStyle.copyWith(
                              fontSize: 12,
                              color: idx == index
                                  ? ColorUtils.white
                                  : ColorUtils.shadeGray4),
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
                'Recommended Furnitures',
                style: textStyle.copyWith(
                    fontSize: 16, color: ColorUtils.shadeGray4),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const RecommendedList(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
          ],
        ),
      ),
    );
  }
}
