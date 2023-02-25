// ignore: file_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_9/screen/HomeScreenOne.dart';
import 'package:http/http.dart' as http;

class ScreensTow extends StatefulWidget {
  const ScreensTow({super.key});
  @override
  State<ScreensTow> createState() => _ScreensTowState();
}

class _ScreensTowState extends State<ScreensTow> {
  // ignore: non_constant_identifier_names
  var CurrentIndex = 0;
  // ignore: non_constant_identifier_names
  var CurrentIndexSide = false;

  // ignore: non_constant_identifier_names
  List<dynamic> Users = [];

  void apiCall() async {
    // ignore: avoid_print
    print("API IS CALLING NOW");
    const url = "https://jsonplaceholder.typicode.com/posts";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final jsonObject = jsonDecode(body);
    setState(() {
      Users = jsonObject;
    });
    // ignore: avoid_print
    print("API CALLING IS COMPLETED");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOW NEW APP"),
      ),
      body: Container(
        margin: const EdgeInsets.all(0),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              // Row(
              //   children: const [
              //     Image(
              //       image: NetworkImage(
              //           "https://jsonplaceholder.typicode.com/posts/1/comments"),
              //       fit: BoxFit.cover,
              //       width: 100,
              //       height: 100,
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () => {
                        apiCall(),
                      },
                      child: const Text("CALL API"),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child:const HomeScreenOne() ,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "MonabbirHasan",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'roboto'),
                ),
                accountEmail: Text(
                  "Monabbir@gmail.com",
                  strutStyle: StrutStyle(fontSize: 15),
                ),
                currentAccountPicture: Image(
                  image: NetworkImage(
                      "https://pub-static.fotor.com/assets/text_to_image/demos/24.png"),
                  width: 400,
                  height: 450,
                  alignment: Alignment.bottomCenter,
                  colorBlendMode: BlendMode.color,
                ),
                margin: EdgeInsets.all(5),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              horizontalTitleGap: 2,
              hoverColor: Colors.amber,
              subtitle: const Text(
                "Our Home",
                style: TextStyle(fontSize: 8),
                textAlign: TextAlign.left,
              ),
              selected: CurrentIndexSide,
              onTap: () {
                CurrentIndexSide = true;
              },
            ),
            ListTile(
              leading: const Icon(Icons.safety_check),
              title: const Text("safety"),
              horizontalTitleGap: 2,
              hoverColor: Colors.amber,
              subtitle: const Text(
                "Our safety",
                style: TextStyle(fontSize: 8),
                textAlign: TextAlign.left,
              ),
              selected: CurrentIndexSide,
              onTap: () {
                CurrentIndexSide = true;
              },
            ),
            ListTile(
              leading: const Icon(Icons.room_service),
              title: const Text("service"),
              horizontalTitleGap: 2,
              hoverColor: Colors.amber,
              subtitle: const Text(
                "Our service",
                style: TextStyle(fontSize: 8),
                textAlign: TextAlign.left,
              ),
              selected: CurrentIndexSide,
              onTap: () {
                CurrentIndexSide = true;
              },
            ),
            ListTile(
              leading: const Icon(Icons.medical_information),
              title: const Text("medical"),
              horizontalTitleGap: 2,
              hoverColor: Colors.amber,
              subtitle: const Text(
                "Our medical",
                style: TextStyle(fontSize: 8),
                textAlign: TextAlign.left,
              ),
              selected: CurrentIndexSide,
              onTap: () {
                CurrentIndexSide = true;
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("settings"),
              horizontalTitleGap: 2,
              hoverColor: Colors.amber,
              subtitle: const Text(
                "Our settings",
                style: TextStyle(fontSize: 8),
                textAlign: TextAlign.left,
              ),
              selected: CurrentIndexSide,
              onTap: () {
                CurrentIndexSide = true;
              },
            ),
            ListTile(
              leading: const Icon(Icons.light),
              title: const Text("Light"),
              horizontalTitleGap: 2,
              hoverColor: Colors.amber,
              subtitle: const Text(
                "Our Light",
                style: TextStyle(fontSize: 8),
                textAlign: TextAlign.left,
              ),
              selected: CurrentIndexSide,
              onTap: () {
                CurrentIndexSide = true;
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (indexs) {
          setState(() {
            CurrentIndex = indexs;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.amber,
              activeIcon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_service),
              label: "Service",
              backgroundColor: Colors.blueAccent,
              activeIcon: Icon(Icons.medical_services)),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_check),
              label: "safety",
              backgroundColor: Colors.pinkAccent,
              activeIcon: Icon(Icons.health_and_safety)),
          BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: "house",
              backgroundColor: Colors.cyanAccent,
              activeIcon: Icon(Icons.house_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_accessibility),
              label: "settings",
              activeIcon: Icon(Icons.settings),
              backgroundColor: Color.fromARGB(255, 102, 255, 0)),
        ],
      ),
    );
  }
}
