import 'package:flutter/material.dart';
import 'package:meals_app/data/data_source/categories.dart';
import 'package:meals_app/data/data_source/meals_data.dart';
import 'package:meals_app/representation/widgets/meal_tile.dart';

import '../../data/models/meals.dart';

class MealsPage extends StatelessWidget {
int categoryId=0;
MealsPage(this.categoryId, {super.key});
  @override
  Widget build(BuildContext context) {
    List<Meal> meals;
    if (categoryId == 0) {
      meals = mealItalian;
    } else if (categoryId == 1) {
      meals = mealQuick;
    } else if (categoryId == 2) {
      meals = mealHum;
    }
    else if (categoryId == 3) {
      meals = mealGerman;
    }
    else if (categoryId == 4) {
      meals = mealLight;
    }
    else if (categoryId == 5) {
      meals = mealExotic;
    }
    else if (categoryId == 6) {
      meals = mealBreakFast;
    }
    else if (categoryId == 7) {
      meals = mealAsian;
    }
    else if (categoryId == 8) {
      meals = mealFrensh;
    }
    else if (categoryId == 9) {
      meals = mealFrensh;
    }
    else {
      meals = []; // Handle other category IDs if needed
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(Icons.arrow_back_outlined,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.grey[900],
        title: Text(
          categories[categoryId].categoryName,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:Container(
        color: Colors.black,
        child: ListView.separated(
            itemBuilder: (_,i)=>MealTile(index: i, pageIndex: categoryId),
            separatorBuilder:(_,i)=>const SizedBox(height: 16,),
            itemCount: meals.length),
      )
    );
  }
}
