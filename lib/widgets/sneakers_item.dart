import 'package:flutter/material.dart';
import '../models/sneaker.dart';
import '../screens/sneaker_screen.dart';
import '../main_data.dart';

class SneakersItem extends StatelessWidget {
  final id;
  final name;
  final image;
  final size;
  final price;
  final delivery;
  final gender;
  final color;

  SneakersItem(
      {this.name, this.image, this.size, this.price, this.delivery, this.id, this.color, this.gender});

  void selectSneaker(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(SneakerScreen.routeName, arguments: id).then((remove) {
      if (remove != null) {
        
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectSneaker(context),
      child: Card(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child:  Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    right: 10,
                    child: Container(
                      width: 150,
                      color: Colors.black12,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 26, color: Colors.black),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Size: ${size}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${price}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      Text(
                        '${delivery} min',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
