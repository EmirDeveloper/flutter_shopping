import 'package:flutter/material.dart';
import '../screens/category_screen.dart';
import '../screens/category_sneakers_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String name;
  final color;

  CategoryItem(this.id, this.name, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(CategorySneakersScreen.routeName, arguments: {'id': id, 'name': name});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Container(
        child: Center(
            child: Text(
          name,
          style: Theme.of(context).textTheme.titleLarge,
        )),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.4),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
