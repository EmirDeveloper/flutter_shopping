import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '/./main_data.dart';
import 'category_sneakers_screen.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(15),
        children: MainCategory.map((capdata) =>
            CategoryItem(capdata.id, capdata.name, capdata.color)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3 / 2));
  }
}
