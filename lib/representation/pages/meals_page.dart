import 'package:flutter/material.dart';
import 'package:meals_app/data/data_source/categories.dart';
import 'package:meals_app/data/data_source/meals_data.dart';
import 'package:meals_app/data/models/meals.dart';
import 'package:meals_app/representation/widgets/meal_tile.dart';
import 'package:meals_app/representation/widgets/text_form_field_tile.dart';

class MealsPage extends StatefulWidget {
  final int categoryId;
  const MealsPage(this.categoryId, {super.key});

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  bool isShowBottomSheet = false;

  IconData icon = Icons.edit;

  late Meal meal;

  var nameController = TextEditingController();

  var colorController = TextEditingController();

  var timeController = TextEditingController();

  var difficultyController = TextEditingController();

  var standardController = TextEditingController();
  var imageUrlController = TextEditingController();
  var ingredientController = TextEditingController();
  var stepsController = TextEditingController();
  var idController = TextEditingController();

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.grey[900],
        title: Text(
          categories[widget.categoryId].categoryName,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView.separated(
            itemBuilder: (_, i) => MealTile(
                  meal:
                      meals.where((m) => m.id == widget.categoryId).toList()[i],
                ),
            separatorBuilder: (_, i) => const SizedBox(
                  height: 16,
                ),
            itemCount: meals.where((m) => m.id == widget.categoryId).length),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (isShowBottomSheet) {
              if (formKey.currentState!.validate()) {
                meal = Meal(
                    name: nameController.text,
                    time: timeController.text,
                    standard: standardController.text,
                    difficulty: difficultyController.text,
                    imageUrl: 'assets/images/chicken.jpg',
                    id: widget.categoryId,
                    steps: stepsController.text,
                    ingredients: ingredientController.text);
                meals.add(meal);
                Navigator.pop(context);
                isShowBottomSheet = false;
                setState(() {
                  icon = Icons.edit;
                });
              }
            } else {
              scaffoldKey.currentState!.showBottomSheet(
                (context) => Container(
                  color: Colors.black,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormTile(
                                controller: nameController,
                                type: TextInputType.text,
                                function: (value) {
                                  if (value!.isEmpty) {
                                    return 'meal name must be entered';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: "Enter The meal Name",
                                  border: OutlineInputBorder(),
                                  prefix: Icon(
                                    Icons.title,
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormTile(
                              controller: difficultyController,
                              type: TextInputType.text,
                              function: (value) {
                                if (value!.isEmpty) {
                                  return 'meal diff must be entered';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                labelText: "Enter The meal diff",
                                border: OutlineInputBorder(),
                                prefix: Icon(
                                  Icons.title,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormTile(
                              controller: timeController,
                              type: TextInputType.text,
                              function: (value) {
                              if (value!.isEmpty) {
                                return 'time must be entered';
                              }
                              return null;
                            },
                             decoration: const InputDecoration(
                        labelText: "enter the time will be taken",
                        border: OutlineInputBorder(),
                        prefix: Icon(
                          Icons.timelapse_outlined,
                        ),
                      ),),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormTile(
                                controller: standardController,
                                type: TextInputType.text,
                                function:(value) {
                                  if (value!.isEmpty) {
                                    //this msg must be unique
                                    return 'standard must be entered';
                                  }
                                  return null;
                                }, decoration: const InputDecoration(
                              labelText: "enter the standard",
                              border: OutlineInputBorder(),
                              prefix: Icon(
                                Icons.watch_later,
                              ),
                            )),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormTile(
                                controller: imageUrlController,
                                type: TextInputType.text,
                                function: (value) {
                                  if (value!.isEmpty) {
                                    //this msg must be unique
                                    return 'image URL must be entered';
                                  }
                                  return null;
                                }, decoration:const InputDecoration(
                              labelText: "enter the Image URL",
                              border: OutlineInputBorder(),
                              prefix: Icon(
                                Icons.watch_later,
                              ),
                            )),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormTile(
                                controller: ingredientController,
                                type: TextInputType.text,
                                function: (value) {
                                  if (value!.isEmpty) {
                                    //this msg must be unique
                                    return 'ingredients must be entered';
                                  }
                                  return null;
                                },
                                decoration:const InputDecoration(
                                  labelText: "enter the  meal ingredients",
                                  border: OutlineInputBorder(),
                                  prefix: Icon(
                                    Icons.watch_later,
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormTile(
                                controller: stepsController,
                                type: TextInputType.text,
                                function: (value) {
                                  if (value!.isEmpty) {
                                    //this msg must be unique
                                    return 'steps must be entered';
                                  }
                                  return null;
                                },
                                decoration:  const InputDecoration(
                                  labelText: "enter the meal steps",
                                  border: OutlineInputBorder(),
                                  prefix: Icon(
                                    Icons.watch_later,
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            // TextFormTile(
                            //     controller: idController,
                            //     type: TextInputType.number,
                            //     function:(value) {
                            //       if (value!.isEmpty) {
                            //         //this msg must be unique
                            //         return 'meal id must be entered';
                            //       }
                            //       return null;
                            //     }, decoration: const InputDecoration(
                            //   labelText: "enter the meal id",
                            //   border: OutlineInputBorder(),
                            //   prefix: Icon(
                            //     Icons.watch_later,
                            //   ),
                            // )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
              isShowBottomSheet = true;
              setState(() {
                icon = Icons.add;
              });
            }
          },
          child: Icon(icon)),
    );
  }
}
