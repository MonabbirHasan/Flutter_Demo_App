// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_9/widgets/DrawerNavigation.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  var inputValue = '';
  // ignore: non_constant_identifier_names
  var NewIndex = 0;
  var SideBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New App"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(10, 12),
              spreadRadius: 30,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              color: Colors.amber)
        ]),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(5),
              // ignore: unnecessary_brace_in_string_interps
              child: Text("welcome ${inputValue}"),
            ),
            Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color.fromARGB(255, 188, 212, 253),
                    border: Border.all(
                        color: const Color.fromRGBO(255, 193, 7, 1),
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter)),
                height: 40,
                alignment: Alignment.center,
                transformAlignment: Alignment.bottomCenter,
                child: Center(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Enter text here',
                      border: InputBorder.none,
                    ),
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    textCapitalization: TextCapitalization.characters,
                    maxLength: 100,
                    onChanged: (value) {
                      // ignore: avoid_print
                      // print(value);
                      setState(() {
                        inputValue = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(5),
              child: ElevatedButton(
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                onPressed: () => {print("welcome to ${inputValue}")},
                child: const Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              // ignore: unnecessary_brace_in_string_interps
              child: Text("welcome ${inputValue}"),
            ),
            Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color.fromARGB(255, 188, 212, 253),
                    border: Border.all(
                        color: const Color.fromRGBO(255, 193, 7, 1),
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter)),
                height: 40,
                alignment: Alignment.center,
                transformAlignment: Alignment.bottomCenter,
                child: Center(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Enter text here',
                      border: InputBorder.none,
                    ),
                    textAlign: TextAlign.justify,
                    maxLength: 100,
                    onChanged: (value) {
                      // ignore: avoid_print
                      // print(value);
                      setState(() {
                        inputValue = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(5),
              child: ElevatedButton(
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                onPressed: () => {print("welcome to ${inputValue}")},
                child: const Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: DrawerNavigation(),
      ),
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
}
