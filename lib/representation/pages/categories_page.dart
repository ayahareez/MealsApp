import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/data/data_source/categories.dart';
import 'package:meals_app/data/models/category.dart';
import 'package:meals_app/representation/pages/fav_meal_page.dart';
import 'package:meals_app/representation/widgets/category_tile.dart';
import 'package:meals_app/representation/widgets/text_form_field_tile.dart';

import '../widgets/meal_tile.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int index = 0;
  IconData icon = Icons.edit;
  bool isShowBottomSheet = false;
  late CategorySection category;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  GlobalKey<FormState> formKey = GlobalKey();
  var nameController = TextEditingController();
  var colorController=TextEditingController();
  var idController=TextEditingController();

  // var timeController = TextEditingController();
  // var difficultyController = TextEditingController();
  // var standardController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        color: Colors.black,
        width: double.infinity,
        padding: const EdgeInsetsDirectional.all(16),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (_, i) => CategoryTile(i),
                itemCount: categories.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(isShowBottomSheet){
              if(formKey.currentState!.validate()){
                category=CategorySection(color: Colors.teal, categoryName: nameController.text, id: int.parse(idController.text));
                categories.add(category);
                Navigator.pop(context);
                isShowBottomSheet = false;
                setState(() {
                  icon = Icons.edit;
                });
              }
            }
            else{scaffoldKey.currentState!.showBottomSheet(
                  (context) => Container(
                color: Colors.black,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormTile(
                            controller: nameController,
                            type: TextInputType.text,
                            function: (value) {
                              if (value!.isEmpty) {
                                return 'category name must be entered';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: "Enter The Category Name",
                              border: OutlineInputBorder(),
                              prefix: Icon(
                                Icons.title,
                              ),
                            )),
                        const SizedBox(height: 8,),
                        TextFormTile(
                            controller: colorController,
                            type: TextInputType.number,
                            decoration: const InputDecoration(
                          labelText: "Enter The Category Color",
                          border: OutlineInputBorder(),
                          prefix: Icon(
                            Icons.title,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            );
            isShowBottomSheet = true;
            setState(() {
              icon = Icons.add;
            });
          }},
          child: Icon(icon)),
    );
  }
}
