// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:projectassignment/shopscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSelectedIndex = 0;
  var screens = [
    ShopPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined), label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "Account"),
        ],
      ),
    );
  }
}
