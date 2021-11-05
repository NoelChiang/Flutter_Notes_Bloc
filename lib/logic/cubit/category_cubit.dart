import 'package:bloc/bloc.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryState(value: []));

  void toggleFilterCategory(String category) => emit(CategoryState(
      value: state.value.contains(category)
          ? state.value.where((element) => element != category).toList()
          : state.value + [category]));
}
