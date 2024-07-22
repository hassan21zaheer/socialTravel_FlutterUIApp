import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelsocialapp/pages/explore.dart';
import 'package:travelsocialapp/pages/newsfeed.dart';
import 'package:travelsocialapp/pages/trips.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentindex = 0;


  final List<Widget> _pages = [
  NewsFeed(),
  Explore(),
  Trips(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[_currentindex],
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _currentindex = 0;
                  });
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: 0 == _currentindex ? Colors.red : Colors.grey[300],
                  ),
                  child: Center(
                    child: Icon(
                      Iconsax.home,
                      color: 0 == _currentindex ? Colors.white : Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentindex = 1;
                  });
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: 1 == _currentindex ? Colors.red : Colors.grey[300],
                  ),
                  child: Center(
                    child: Icon(
                      Ionicons.compass_outline,
                      color: 1 == _currentindex ? Colors.white : Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentindex = 2;
                    // navigationTapped(2);
                  });
                  // selectItem(2);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: 2 == _currentindex ? Colors.red : Colors.grey[300],
                  ),
                  child: Center(
                    child: Icon(
                      Iconsax.menu_board,
                      color: 2 == _currentindex ? Colors.white : Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: ()=> print('Add Story'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Icon(
                        Ionicons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
