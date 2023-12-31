import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/data/data_source/categories.dart';
import 'package:meals_app/representation/pages/meals_page.dart';

class CategoryTile extends StatelessWidget {
  final int index;
  const CategoryTile(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MealsPage(categories[index].id)));
        if (kDebugMode) {
          print(index);
        }
      },
      child: Container(
        padding: const EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
          color: categories[index].color,
          borderRadius: BorderRadius.circular(32)
        ),
        child: Text(
          categories[index].categoryName,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
             fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
