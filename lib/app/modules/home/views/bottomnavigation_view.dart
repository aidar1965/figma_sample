import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomnavigationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedItemColor: Color.fromRGBO(188, 188, 188, 0.3),
        selectedItemColor: Color.fromRGBO(188, 188, 188, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              color: Color.fromRGBO(234, 58, 56, 0.8),
              size: 24,
            ),
            label: 'Меню',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Color.fromRGBO(136, 136, 136, 1),
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Color.fromRGBO(136, 136, 136, 1),
            ),
            label: 'Инфо',
          ),
        ]);
  }
}
