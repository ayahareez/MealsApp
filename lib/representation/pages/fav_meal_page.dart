
import 'package:flutter/material.dart';
import 'package:meals_app/data/models/meal_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/meal_tile.dart';

class FavoriteMealsPage extends StatelessWidget {
  const FavoriteMealsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          color: Colors.black,
          child: Consumer<MealProvider>(
            builder: (context,favModel,child)=>ListView.separated(
                itemBuilder: (_,i)=>MealTile(meal: MealProvider.favoriteMeals.elementAt(i)),
                separatorBuilder:(_,i)=>const SizedBox(height: 16,),
                itemCount: MealProvider.favoriteMeals.length),
          ),
        ),
    );
  }
}

