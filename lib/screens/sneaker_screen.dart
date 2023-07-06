import '../main_data.dart';
import 'package:flutter/material.dart';

class SneakerScreen extends StatelessWidget {
  static const routeName = '/Trainer-Screen';

  final Function toggleFavorite;
  final Function isSneakerFavorite;

  SneakerScreen(this.toggleFavorite, this.isSneakerFavorite);

  @override
  Widget build(BuildContext context) {
    final sneakerId = ModalRoute.of(context)?.settings.arguments;

    final selectSneaker =
        MainSneaker.firstWhere((sneaker) => sneaker.id == sneakerId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectSneaker.name),
        backgroundColor: Color.fromARGB(255, 45, 152, 174),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              selectSneaker.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: Text(
                        'Name: ${selectSneaker.name}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      child: Text(
                        'Price: ${selectSneaker.price} TMT',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      child: Text(
                        'Gender: ${selectSneaker.gender}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      child: Text(
                        'Color: ${selectSneaker.color}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      child: Text(
                        'Size: ${selectSneaker.size}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text('Phone: ${selectSneaker.phone}', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toggleFavorite(sneakerId),
        backgroundColor: Color.fromARGB(255, 45, 152, 174),
        child: Icon(isSneakerFavorite(sneakerId)
            ? Icons.favorite
            : Icons.favorite_border),
      ),
    );
  }
}
