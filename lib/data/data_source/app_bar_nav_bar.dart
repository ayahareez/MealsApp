import 'package:flutter/material.dart';

List<AppBar> appBar=[
  AppBar(
    backgroundColor: Colors.grey[900],
    leading: IconButton(icon: const Icon(Icons.menu,color: Colors.white,),onPressed: (){},),
    title: const Text(
      'Categories',
      style: TextStyle(
          color: Colors.white
      ),
    ),
  ),
  AppBar(
    backgroundColor: Colors.grey[900],
    leading: IconButton(icon: const Icon(Icons.menu,color: Colors.white,),onPressed: (){},),
    title: Text(
      'Favorite Meals',
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
];