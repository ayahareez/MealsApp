import 'package:flutter/material.dart';
import 'package:meals_app/data/models/meals.dart';
import 'package:meals_app/representation/pages/meal_info_page.dart';
import 'package:provider/provider.dart';

import '../../data/models/meal_provider.dart';

class MealTile extends StatelessWidget {
  final Meal meal;

  MealTile({super.key, required this.meal});

  bool fav = false;

  @override
  Widget build(BuildContext context) {
    final mealProvider = Provider.of<MealProvider>(context);//object
    final isFavorite = mealProvider.isMealFavorite(meal);//جواها ولا لا ال  meal دي

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MealInfoPage(meal: meal)));
      },
      child: Container(
        padding: const EdgeInsetsDirectional.all(8),
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: GridTile(
            footer: Container(
              height: 100,
              color: Colors.black.withOpacity(0.7),
              padding: const EdgeInsetsDirectional.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    meal.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.access_time_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        meal.time,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        meal.difficulty,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.attach_money_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        meal.standard,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Consumer<MealProvider>(
                        builder:(context,favModel,child)=> Checkbox(
                          value: isFavorite,
                          onChanged: (value) {
                            mealProvider.toggleFavorite(meal);
                            // setState(() {
                            //   if(value==true){
                            //     favMeals.add(widget.meal);
                            //   }
                            //   else if(value==false){
                            //     favMeals.remove(widget.meal);
                            //   }
                           // }
                           // );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            child: Image.asset(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

// String getImageUrlByPageIndex(int pageIndex, int index) {
//   switch (pageIndex) {
//     case 0:
//       return mealItalian[index].imageUrl;
//     case 1:
//       return mealQuick[index].imageUrl;
//     case 2:
//       return mealHum[index].imageUrl;
//     case 3:
//       return mealGerman[index].imageUrl;
//     case 4:
//       return mealLight[index].imageUrl;
//     case 5:
//       return mealExotic[index].imageUrl;
//     case 6:
//       return mealBreakFast[index].imageUrl;
//     case 7:
//       return mealAsian[index].imageUrl;
//     case 8:
//       return mealFrensh[index].imageUrl;
//     case 9:
//       return mealSummer[index].imageUrl;
//   // Add more cases as needed for additional page indexes
//     default:
//       return 'fallback_image_url.jpg';
//   }
// }
//
// String getMealNameByPageIndex(int pageIndex, int index) {
//   switch (pageIndex) {
//     case 0:
//       return mealItalian[index].name;
//     case 1:
//       return mealQuick[index].name;
//     case 2:
//       return mealHum[index].name;
//     case 3:
//       return mealGerman[index].name;
//     case 4:
//       return mealLight[index].name;
//     case 5:
//       return mealExotic[index].name;
//     case 6:
//       return mealBreakFast[index].name;
//     case 7:
//       return mealAsian[index].name;
//     case 8:
//       return mealFrensh[index].name;
//     case 9:
//       return mealSummer[index].name;
//   // Add more cases as needed for additional page indexes
//     default:
//       return 'Invalid Page Index';
//   }
// }
//
// String getMealTimeByPageIndex(int pageIndex, int index) {
//   switch (pageIndex) {
//     case 0:
//       return mealItalian[index].time;
//     case 1:
//       return mealQuick[index].time;
//     case 2:
//       return mealHum[index].time;
//     case 3:
//       return mealGerman[index].time;
//     case 4:
//       return mealLight[index].time;
//     case 5:
//       return mealExotic[index].time;
//     case 6:
//       return mealBreakFast[index].time;
//     case 7:
//       return mealAsian[index].time;
//     case 8:
//       return mealFrensh[index].time;
//     case 9:
//       return mealSummer[index].time;
//
//   // Add more cases as needed for additional page indexes
//     default:
//       return '';
//   }
// }
//
// String getMealDifficultyByPageIndex(int pageIndex, int index) {
//   switch (pageIndex) {
//     case 0:
//       return mealItalian[index].difficulty;
//     case 1:
//       return mealQuick[index].difficulty;
//     case 2:
//       return mealHum[index].difficulty;
//     case 3:
//       return mealGerman[index].difficulty;
//     case 4:
//       return mealLight[index].difficulty;
//     case 5:
//       return mealExotic[index].difficulty;
//     case 6:
//       return mealBreakFast[index].difficulty;
//     case 7:
//       return mealAsian[index].difficulty;
//     case 8:
//       return mealFrensh[index].difficulty;
//     case 9:
//       return mealSummer[index].difficulty;
//   // Add more cases as needed for additional page indexes
//     default:
//       return '';
//   }
// }
//
// String getMealStandardByPageIndex(int pageIndex, int index) {
//   switch (pageIndex) {
//     case 0:
//       return mealItalian[index].standard;
//     case 1:
//       return mealQuick[index].standard;
//     case 2:
//       return mealHum[index].standard;
//     case 3:
//       return mealGerman[index].standard;
//     case 4:
//       return mealLight[index].standard;
//     case 5:
//       return mealExotic[index].standard;
//     case 6:
//       return mealBreakFast[index].standard;
//     case 7:
//       return mealAsian[index].standard;
//     case 8:
//       return mealFrensh[index].standard;
//     case 9:
//       return mealSummer[index].standard;
//   // Add more cases as needed for additional page indexes
//     default:
//       return '';
//   }
// }
