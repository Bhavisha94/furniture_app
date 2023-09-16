import 'package:flutter_bloc/flutter_bloc.dart';

part 'details_item_color_state.dart';

class DetailsItemColorCubit extends Cubit<DetailsItemColorState> {
  DetailsItemColorCubit() : super(DetailsItemColorInitial());

  change(int index) {
    emit(DetailsItemColorIndex(index: index));
  }
}
