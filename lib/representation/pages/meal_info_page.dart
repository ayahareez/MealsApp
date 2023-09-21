import 'package:flutter/material.dart';
import 'package:meals_app/data/models/mealsFunctions.dart';
import 'package:meals_app/representation/pages/meals_page.dart';

import '../../data/data_source/meals_data.dart';

class MealInfoPage extends StatelessWidget {
  final int index;
  final int pageIndex;
  const MealInfoPage({super.key, required this.index,required this.pageIndex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined,color: Colors.white,),
          onPressed: (){
              Navigator.pop(context);
          },
        ),
        title:Text(
            MealsFunctions.getMealNameByPageIndex(pageIndex, index),
          style: const TextStyle(
            color: Colors.white
          ),
        ) ,
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.asset(
              MealsFunctions.getImageUrlByPageIndex(pageIndex, index),
              fit: BoxFit.cover,
            ),
            const SizedBox(height:16 ,),
            const Text(
              'Ingrediants',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                color: Colors.orangeAccent
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              MealsFunctions.getIngredientsByPageIndex(pageIndex, index),
              style: const TextStyle(
                  color: Colors.white38,
                fontSize: 16
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Steps',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                  color: Colors.orangeAccent
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              MealsFunctions.getStepsByPageIndex(pageIndex, index),
              style: const TextStyle(
                color: Colors.white38,
                fontSize: 16
              ),
            ),

          ],
        ),
      ),
    );
  }
}
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
// String getIngredientsByPageIndex(int pageIndex, int index) {
//   switch (pageIndex) {
//     case 0:
//       return mealItalian[index].ingrediants;
//     case 1:
//       return mealQuick[index].ingrediants;
//     case 2:
//       return mealHum[index].ingrediants;
//     case 3:
//       return mealGerman[index].ingrediants;
//     case 4:
//       return mealLight[index].ingrediants;
//     case 5:
//       return mealExotic[index].ingrediants;
//     case 6:
//       return mealBreakFast[index].ingrediants;
//     case 7:
//       return mealAsian[index].ingrediants;
//     case 8:
//       return mealFrensh[index].ingrediants;
//     case 9:
//       return mealSummer[index].ingrediants;
//   // Add more cases as needed for additional page indexes
//     default:
//       return 'fallback_image_url.jpg';
//   }
// }
// String getStepsByPageIndex(int pageIndex, int index) {
//   switch (pageIndex) {
//     case 0:
//       return mealItalian[index].steps;
//     case 1:
//       return mealQuick[index].steps;
//     case 2:
//       return mealHum[index].steps;
//     case 3:
//       return mealGerman[index].steps;
//     case 4:
//       return mealLight[index].steps;
//     case 5:
//       return mealExotic[index].steps;
//     case 6:
//       return mealBreakFast[index].steps;
//     case 7:
//       return mealAsian[index].steps;
//     case 8:
//       return mealFrensh[index].steps;
//     case 9:
//       return mealSummer[index].steps;
//   // Add more cases as needed for additional page indexes
//     default:
//       return 'fallback_image_url.jpg';
//   }
// }

