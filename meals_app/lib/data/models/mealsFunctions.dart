import '../data_source/meals_data.dart';
import 'meals.dart';

class MealsFunctions {

  static MealsFunctions getInstance() {
    return MealsFunctions();
  }

  static String getImageUrlByPageIndex(int pageIndex, int index) {
    switch (pageIndex) {
      case 0:
        return mealItalian[index].imageUrl;
      case 1:
        return mealQuick[index].imageUrl;
      case 2:
        return mealHum[index].imageUrl;
      case 3:
        return mealGerman[index].imageUrl;
      case 4:
        return mealLight[index].imageUrl;
      case 5:
        return mealExotic[index].imageUrl;
      case 6:
        return mealBreakFast[index].imageUrl;
      case 7:
        return mealAsian[index].imageUrl;
      case 8:
        return mealFrensh[index].imageUrl;
      case 9:
        return mealSummer[index].imageUrl;
      // Add more cases as needed for additional page indexes
      default:
        return 'fallback_image_url.jpg';
    }
  }

  static String getMealNameByPageIndex(int pageIndex, int index) {
    switch (pageIndex) {
      case 0:
        return mealItalian[index].name;
      case 1:
        return mealQuick[index].name;
      case 2:
        return mealHum[index].name;
      case 3:
        return mealGerman[index].name;
      case 4:
        return mealLight[index].name;
      case 5:
        return mealExotic[index].name;
      case 6:
        return mealBreakFast[index].name;
      case 7:
        return mealAsian[index].name;
      case 8:
        return mealFrensh[index].name;
      case 9:
        return mealSummer[index].name;
      // Add more cases as needed for additional page indexes
      default:
        return 'Invalid Page Index';
    }
  }

  static String getMealTimeByPageIndex(int pageIndex, int index) {
    switch (pageIndex) {
      case 0:
        return mealItalian[index].time;
      case 1:
        return mealQuick[index].time;
      case 2:
        return mealHum[index].time;
      case 3:
        return mealGerman[index].time;
      case 4:
        return mealLight[index].time;
      case 5:
        return mealExotic[index].time;
      case 6:
        return mealBreakFast[index].time;
      case 7:
        return mealAsian[index].time;
      case 8:
        return mealFrensh[index].time;
      case 9:
        return mealSummer[index].time;

      // Add more cases as needed for additional page indexes
      default:
        return '';
    }
  }

  static String getMealDifficultyByPageIndex(int pageIndex, int index) {
    switch (pageIndex) {
      case 0:
        return mealItalian[index].difficulty;
      case 1:
        return mealQuick[index].difficulty;
      case 2:
        return mealHum[index].difficulty;
      case 3:
        return mealGerman[index].difficulty;
      case 4:
        return mealLight[index].difficulty;
      case 5:
        return mealExotic[index].difficulty;
      case 6:
        return mealBreakFast[index].difficulty;
      case 7:
        return mealAsian[index].difficulty;
      case 8:
        return mealFrensh[index].difficulty;
      case 9:
        return mealSummer[index].difficulty;
      // Add more cases as needed for additional page indexes
      default:
        return '';
    }
  }

  static String getMealStandardByPageIndex(int pageIndex, int index) {
    switch (pageIndex) {
      case 0:
        return mealItalian[index].standard;
      case 1:
        return mealQuick[index].standard;
      case 2:
        return mealHum[index].standard;
      case 3:
        return mealGerman[index].standard;
      case 4:
        return mealLight[index].standard;
      case 5:
        return mealExotic[index].standard;
      case 6:
        return mealBreakFast[index].standard;
      case 7:
        return mealAsian[index].standard;
      case 8:
        return mealFrensh[index].standard;
      case 9:
        return mealSummer[index].standard;
      // Add more cases as needed for additional page indexes
      default:
        return '';
    }
  }

  static String getIngredientsByPageIndex(int pageIndex, int index) {
    switch (pageIndex) {
      case 0:
        return mealItalian[index].ingredients;
      case 1:
        return mealQuick[index].ingredients;
      case 2:
        return mealHum[index].ingredients;
      case 3:
        return mealGerman[index].ingredients;
      case 4:
        return mealLight[index].ingredients;
      case 5:
        return mealExotic[index].ingredients;
      case 6:
        return mealBreakFast[index].ingredients;
      case 7:
        return mealAsian[index].ingredients;
      case 8:
        return mealFrensh[index].ingredients;
      case 9:
        return mealSummer[index].ingredients;
      // Add more cases as needed for additional page indexes
      default:
        return 'fallback_image_url.jpg';
    }
  }

  static String getStepsByPageIndex(int pageIndex, int index) {
    switch (pageIndex) {
      case 0:
        return mealItalian[index].steps;
      case 1:
        return mealQuick[index].steps;
      case 2:
        return mealHum[index].steps;
      case 3:
        return mealGerman[index].steps;
      case 4:
        return mealLight[index].steps;
      case 5:
        return mealExotic[index].steps;
      case 6:
        return mealBreakFast[index].steps;
      case 7:
        return mealAsian[index].steps;
      case 8:
        return mealFrensh[index].steps;
      case 9:
        return mealSummer[index].steps;
      // Add more cases as needed for additional page indexes
      default:
        return 'fallback_image_url.jpg';
    }
  }
}
