import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Displaypage.dart';
import 'Cartpage.dart';
import 'Userpage.dart';

class Shopage extends StatefulWidget {
  const Shopage({Key? key}) : super(key: key);

  @override
  _ShopageState createState() => _ShopageState();
}

class _ShopageState extends State<Shopage> {
  int _selectedIndex = 0;

  // Define the screens for each bottom navigation item
  final List<Widget> _screens = [
    Homepage(),
    Displaypage(),
    Cartpage(),
    Userpage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectedIndex],
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          iconSize: 55,
          selectedFontSize: 20,
          items: [
            BottomNavigationBarItem(
              icon:Image.asset("assets/home.png",
              width: 55,
                height: 55,
              ),
              label: 'Home',
              backgroundColor: Color.fromRGBO(198, 61, 47, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/display.png",
                width: 55,
                height: 55,),
              label: 'Display',
             backgroundColor: Color.fromRGBO(226, 94, 62, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/shopping-cart 1.png",
                width: 55,
                height: 55,
              ),
              label: 'Cart',
              backgroundColor: Color.fromRGBO(255, 155, 80, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/user.png",
                width: 55,
                height: 55,),
              label: 'User',
              backgroundColor: Color.fromRGBO(255, 187, 92, 1),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}







