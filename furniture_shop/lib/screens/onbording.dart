import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/bording1.dart';
import 'package:furniture_shop/screens/bording2.dart';
import 'package:furniture_shop/screens/bording3.dart';
import 'package:furniture_shop/screens/login.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/style.dart';
import 'package:furniture_shop/widget/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  PageController controller = PageController();
  List<Widget> list = [const Bording1(), const Bording2(), const Bording3()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView.builder(
              itemCount: 3,
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              controller: controller,
              itemBuilder: (context, index) {
                return list[index];
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .056,
            left: MediaQuery.of(context).size.width * .15,
            child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 5,
                  dotColor: ColorUtils.inactiveDotColor,
                  activeDotColor: ColorUtils.dotColor,
                )),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .04,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: index == 0
                    ? Center(
                        child: Button(
                        width: MediaQuery.of(context).size.width * .9,
                        height: 48,
                        fontSize: 14,
                        text: 'CONTINUE',
                        color: ColorUtils.yellow,
                        onCallBack: () => controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn),
                      ))
                    : Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                if (index == 2) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()));
                                } else {
                                  controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                }
                              },
                              child: SizedBox(
                                width: 27,
                                height: 22,
                                child:
                                    SvgPicture.asset('assets/images/arrow.svg'),
                              ),
                            )
                          ],
                        ),
                      )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .1,
            left: MediaQuery.of(context).size.width * .07,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Best Furniture',
                  style: textStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 34,
                      color: index == 0
                          ? ColorUtils.shadeGray4
                          : ColorUtils.white),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'Mauris dignissim hendrerit pretium. Quisque at tortor diam.',
                    style: textStyle.copyWith(color: ColorUtils.shadeA4),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
