part of 'details_item_color_cubit.dart';

abstract class DetailsItemColorState {}

class DetailsItemColorInitial extends DetailsItemColorState {}

class DetailsItemColorIndex extends DetailsItemColorState {
  final int index;
  DetailsItemColorIndex({required this.index});
}
