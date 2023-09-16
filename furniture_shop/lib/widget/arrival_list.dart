import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/details.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/list.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';

class ArrivalList extends StatelessWidget {
  const ArrivalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        padding: const EdgeInsets.only(left: 15),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              // onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => DetailsScreen(
              //               tag: 'arrival$index',
              //             ))),
              child: Hero(
                tag: 'arrival$index',
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: 100,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: ColorUtils.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        width: 105,
                        height: 105,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/arrival.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .02),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .015),
                            Text(
                              'Stylish Commode',
                              style: textStyle.copyWith(
                                  fontSize: 14, color: ColorUtils.shadeGray4),
                            ),
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .01),
                            Text(
                              'Bedroom',
                              style: textStyle.copyWith(
                                  color: ColorUtils.shadeBB, fontSize: 12),
                            ),
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .01),
                            Row(
                              children: [
                                SvgPicture.asset('assets/images/favorite.svg'),
                                SizeUtils.horizontalSpacing(
                                    width: MediaQuery.of(context).size.width *
                                        .02),
                                Text(
                                  popularList[index].rate,
                                  style: textStyle.copyWith(
                                      fontSize: 12, color: ColorUtils.shadeBB),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
