import 'package:flutter/material.dart';
import '../models/sneaker.dart';
import '../widgets/sneakers_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Sneaker> favoriteSneaker;

  FavoriteScreen(this.favoriteSneaker);

  @override
  Widget build(BuildContext context) {
    if (favoriteSneaker.isEmpty) {
      return Center(
        child: Text(
          'Not Favorites yet!',
          style: TextStyle(
              color: const Color.fromARGB(255, 45, 152, 174), fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return SneakersItem(
            id: favoriteSneaker[index].id,
            name: favoriteSneaker[index].name,
            image: favoriteSneaker[index].image,
            size: favoriteSneaker[index].size,
            price: favoriteSneaker[index].price,
            delivery: favoriteSneaker[index].delivery,
            color: favoriteSneaker[index].color,
            gender: favoriteSneaker[index].gender,
          );
        },
        itemCount: favoriteSneaker.length,
      );
    }
  }
}
