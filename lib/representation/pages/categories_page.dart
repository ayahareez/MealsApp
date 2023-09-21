import 'package:flutter/material.dart';
import 'package:meals_app/data/data_source/categories.dart';
import 'package:meals_app/representation/widgets/category_tile.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(icon: const Icon(Icons.menu,color: Colors.white,),onPressed: (){},),
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
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
                itemBuilder: (_,i)=>CategoryTile(i),
                itemCount: categories.length,
              ),
            ),
            BottomNavigationBar(
              currentIndex: index,
              backgroundColor: Colors.black,
                onTap: (value){
                setState(() {
                  index=value;
                });
                },
                items:[
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.set_meal,color: Colors.white38,),
                    label: 'Categories',
                  ),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.favorite,color: Colors.white38,),
                    label: 'Favorite',
                  )
                ],
            )
          ],
        ),
      ),
    );
  }
}
