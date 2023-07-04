import 'package:flutter/material.dart';
import '../main_data.dart';
import '../widgets/sneakers_item.dart';

class CategorySneakersScreen extends StatelessWidget {
  
  static const routeName = '/category-Sneakers';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryName = routeArgs['name'];
    final categoryId = routeArgs['id'] as String;
    final categorySneakers = MainSneaker.where((Sneaker) {
      return Sneaker.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 152, 174),
        title: Text(categoryName!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return SneakersItem(
            id: categorySneakers[index].id,
            name: categorySneakers[index].name,
            image: categorySneakers[index].image,
            size: categorySneakers[index].size,
            price: categorySneakers[index].price,
            delivery: categorySneakers[index].delivery,
            color: categorySneakers[index].color,
            gender: categorySneakers[index].gender,
          );
        },
        itemCount: categorySneakers.length,
      ),
    );
  }
}
