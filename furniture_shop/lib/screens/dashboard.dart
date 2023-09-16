import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/cubit/cubit/bottom_item_cubit.dart';
import 'package:furniture_shop/screens/cart.dart';
import 'package:furniture_shop/screens/favorite.dart';
import 'package:furniture_shop/screens/home.dart';
import 'package:furniture_shop/screens/home2.dart';
import 'package:furniture_shop/screens/profile.dart';
import 'package:furniture_shop/utils/colors.dart';
import 'package:furniture_shop/widget/bottom_item.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;
  List<Widget> list = const [Home2(), Cart(), Favorite(), Profile()];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomItemCubit, BottomItemState>(
      listener: (context, state) {
        log(state.toString());
        if (state is BottomItemIndex) {
          index = state.index;
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: list[index],
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .088,
            color: ColorUtils.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomItem(
                    index: index,
                    itemIndex: 0,
                    image: 'home',
                    onCallBack: () =>
                        context.read<BottomItemCubit>().change(0)),
                BottomItem(
                    index: index,
                    itemIndex: 1,
                    image: 'cart',
                    onCallBack: () =>
                        context.read<BottomItemCubit>().change(1)),
                BottomItem(
                    index: index,
                    itemIndex: 2,
                    image: 'star',
                    onCallBack: () =>
                        context.read<BottomItemCubit>().change(2)),
                BottomItem(
                    index: index,
                    itemIndex: 3,
                    image: 'profile',
                    onCallBack: () =>
                        context.read<BottomItemCubit>().change(3)),
              ],
            ),
          ),
        );
      },
    );
  }
}
