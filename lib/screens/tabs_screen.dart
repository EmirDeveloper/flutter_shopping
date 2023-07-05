import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './category_screen.dart';
import './favorite_screen.dart';
import '../widgets/main_drawer.dart';
import './home_screen.dart';
import '../models/sneaker.dart';

class TabsScreen extends StatefulWidget {
  final List<Sneaker> favoriteSneakers;

  TabsScreen(this.favoriteSneakers);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, dynamic>> _pages;

  @override
  void initState() {
    _pages = [
      {'page': HomeScreen(), 'name': 'Home'},
      {'page': CategoryScreen(), 'name': 'Categories'},
      {'page': FavoriteScreen(widget.favoriteSneakers), 'name': 'Favorites'},
    ];
    super.initState();
  }

  int selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;
    return DefaultTabController(
      length: 4,
      // initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            title: Text(_pages[selectedPageIndex]['name']),
            backgroundColor: Color.fromARGB(255, 45, 152, 174),
          ),
          drawer: MainDrawer(),
          body: _pages[selectedPageIndex]['page'],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 0;
                  HapticFeedback.lightImpact();
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(children: [
                BottomNavigationBar(
                    backgroundColor: Color.fromARGB(255, 45, 152, 174),
                    type: BottomNavigationBarType.shifting,
                    onTap: _selectPage,
                    unselectedItemColor: Colors.grey,
                    selectedItemColor: Colors.white,
                    currentIndex: selectedPageIndex,
                    items: [
                      BottomNavigationBarItem(
                          backgroundColor: Color.fromARGB(255, 45, 152, 174),
                          icon: Icon(Icons.home),
                          label: 'Home'),
                      BottomNavigationBarItem(
                          backgroundColor: Color.fromARGB(255, 45, 152, 174),
                          icon: Icon(Icons.category),
                          label: 'Categories'),
                      BottomNavigationBarItem(
                          backgroundColor: Color.fromARGB(255, 45, 152, 174),
                          icon: Icon(Icons.favorite),
                          label: 'Favorites'),
                    ]),
              ]),
            ),
          )),
    );
  }
}
