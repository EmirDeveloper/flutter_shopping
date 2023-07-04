import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './screens/category_screen.dart';
import './screens/category_sneakers_screen.dart';
import './screens/sneaker_screen.dart';
import './screens/tabs_screen.dart';
import './models/sneaker.dart';
import './main_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List<Sneaker> _favoriteSneakers = [];

  void _toggleFavorite(String trainerId) {
    final existingIndex =
        _favoriteSneakers.indexWhere((trainer) => trainer.id == trainerId);

    if (existingIndex >= 0) {
      setState(() {
        _favoriteSneakers.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteSneakers
            .add(MainSneaker.firstWhere((trainer) => trainer.id == trainerId));
      });
    }
  }

  bool _isSneakerFavorite(String id) {
    return _favoriteSneakers.any((trainer) => trainer.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(
          255,
          254,
          229,
          1,
        ),
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromARGB(255, 239, 239, 239),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleLarge: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
      ),
      title: 'Shopping-Center',
      // home: CategoryScreen(),
      initialRoute: '/',
      routes: {
        SneakerScreen.routeName: (ctx) =>
            SneakerScreen(_toggleFavorite, _isSneakerFavorite),
        '/': (ctx) => TabsScreen(_favoriteSneakers),
        CategorySneakersScreen.routeName: (ctx) => CategorySneakersScreen(),
      },

      onGenerateRoute: (settings) {
        print(settings.arguments);
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoryScreen());
      },
    );
  }
}
