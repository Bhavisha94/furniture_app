import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/screens/details.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/utils/list.dart';
import 'package:furniture_shop/utils/size.dart';
import 'package:furniture_shop/utils/style.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .37,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularList.length,
        padding: const EdgeInsets.only(left: 15),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              // onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => DetailsScreen(
              //               tag: 'item$index',
              //             ))),
              child: Hero(
                tag: 'item$index',
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: 318,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: ColorUtils.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .545,
                        height: MediaQuery.of(context).size.height * .2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/${popularList[index].image}.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Text(
                        popularList[index].name,
                        style: textStyle.copyWith(
                            fontSize: 14, color: ColorUtils.shadeGray4),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 145,
                            child: Text(
                              popularList[index].desc,
                              style: textStyle.copyWith(
                                  color: ColorUtils.shadeBB, fontSize: 12),
                            ),
                          ),
                          Text(
                            '\$140',
                            style: textStyle.copyWith(
                                color: ColorUtils.dotColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/favorite.svg'),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .02),
                          Text(
                            popularList[index].rate,
                            style: textStyle.copyWith(
                                fontSize: 12, color: ColorUtils.shadeBB),
                          ),
                          const Spacer(),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                                color: ColorUtils.dotColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: ColorUtils.white,
                              ),
                            ),
                          )
                        ],
                      )
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
