import 'package:flutter_bloc/flutter_bloc.dart';
import 'meals.dart';

class MealBloc extends Cubit<Set<Meal>> {
  MealBloc() : super({});

  void toggleFavorite(Meal meal) {
    if (state.contains(meal)) {
      emit(Set<Meal>.from(state)..remove(meal));
    } else {
      emit(Set<Meal>.from(state)..add(meal));
    }
  }

  bool isMealFavorite(Meal meal) {
    return state.contains(meal);
  }
}