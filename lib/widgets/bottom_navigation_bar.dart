import 'package:flutter/material.dart';

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red[300],
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.widgets,
          ),
          label: 'Menu',
        ),
      ],
    );
  }
}
