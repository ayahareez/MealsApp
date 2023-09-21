import 'package:flutter/material.dart';
import 'package:meals_app/data/data_source/categories.dart';
import 'package:meals_app/data/data_source/meals_data.dart';
import 'package:meals_app/representation/widgets/meal_tile.dart';


class MealsPage extends StatelessWidget {
final int categoryId;
MealsPage(this.categoryId, {super.key});
  @override
  Widget build(BuildContext context) {
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
            itemBuilder: (_,i)=>MealTile(meal: meals.where((m) => m.id == categoryId).toList()[i],),
            separatorBuilder:(_,i)=>const SizedBox(height: 16,),
            itemCount: meals.where((m) => m.id == categoryId).length),
      )
    );
  }
}
