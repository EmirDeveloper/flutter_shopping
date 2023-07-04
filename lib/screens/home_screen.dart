import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import './sneaker_screen.dart';
import '../main_data.dart';
import '../models/sneaker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  void _selectSneaker(BuildContext ctx, String id) {
    Navigator.of(ctx).pushNamed(SneakerScreen.routeName,
        arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: MainSneaker.map((trainer) {
              return InkWell(
                onTap: () => _selectSneaker(context, trainer.id),
                child: Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            child: Image.asset(
                              trainer.image,
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20),
                                child: Text(
                                  trainer.name,
                                  style: TextStyle(
                                      fontSize: 26, color: Colors.black),
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
                              'Size: ${trainer.size}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${trainer.price} TMT',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(Icons.schedule),
                                Text(
                                  '${trainer.delivery} min',
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
            }).toList(),
          ),
        ),
      ),
    );
  }
}
