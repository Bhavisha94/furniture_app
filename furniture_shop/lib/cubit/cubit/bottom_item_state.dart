part of 'bottom_item_cubit.dart';

abstract class BottomItemState {}

class BottomItemInitial extends BottomItemState {}

class BottomItemIndex extends BottomItemState {
  final int index;
  BottomItemIndex({required this.index});
}
