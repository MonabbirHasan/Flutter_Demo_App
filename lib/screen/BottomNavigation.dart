// ignore_for_file: unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';

// ignore: must_be_immutable
class BottomNavigations extends StatelessWidget {
  // const BottomNavigations({super.key});
  // ignore: non_constant_identifier_names
  var NewIndex = 0;

  BottomNavigations({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: NewIndex,
        onTap: (index) {
          setState(() {
            NewIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.safety_check),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service),
            label: "About",
            backgroundColor: Colors.pink,
            activeIcon: Icon(Icons.cabin),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.safety_check),
            label: "About",
            backgroundColor: Colors.purpleAccent,
            activeIcon: Icon(Icons.safety_divider),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "About",
            backgroundColor: Colors.cyanAccent,
            activeIcon: Icon(Icons.baby_changing_station),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.clean_hands),
            label: "About",
            backgroundColor: Colors.amber,
            activeIcon: Icon(Icons.cleaning_services),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
