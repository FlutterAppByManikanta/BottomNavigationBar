import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({super.key});

  @override
  State<BottomNavBarDemo> createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {

  int selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[

   HomeScreen(),

    Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

    Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

    Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("BottomNavigationBar"),
       backgroundColor: Colors.pinkAccent,
     ),
     
     body: Center(
       child: widgetOptions.elementAt(selectedIndex),
     ),

     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.blueAccent,
       selectedItemColor: Colors.white,
       onTap: onItemTapped,
       currentIndex: selectedIndex,
       type: BottomNavigationBarType.fixed,
       unselectedItemColor: Colors.black,

       items: const <BottomNavigationBarItem>[

         BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),

         BottomNavigationBarItem(icon: Icon(Icons.search),label: "SEARCH"),

         BottomNavigationBarItem(icon: Icon(Icons.person),label: "PROFILE"),

         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "SETTINGS")

       ],
     ),
   );
  }
}
