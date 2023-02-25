// ignore: file_names
import 'dart:convert';
// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
// ignore: unused_import, implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_9/screen/AboutPage.dart';
import 'package:flutter_application_9/screen/Light.dart';
import 'package:flutter_application_9/screen/Medical.dart';
import 'package:flutter_application_9/screen/Safety.dart';
import 'package:flutter_application_9/screen/Setting.dart';
// ignore: file_names
import 'package:http/http.dart' as http;

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names
  var CurrentIndex = 2;
  // ignore: non_constant_identifier_names
  var CurrentIndexSide = false;
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
        title: const Text("REST API CALLING"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: Users.length,
          itemBuilder: (context, index) {
            final user = Users[index];
            final title = user['title'];
            final body = user['body'];
            final id = user['id'];
            return Container(
              margin: const EdgeInsets.all(5),
              color: const Color(0xFFFFC107),
              padding: const EdgeInsets.all(5),
              child: Card(
                // ignore: sort_child_properties_last
                child: ListTile(
                  title: Text(
                    body.toString().toUpperCase(),
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'roboto'),
                  ),
                  leading: const CircleAvatar(
                    child: Image(
                      image: NetworkImage(
                          "https://play-lh.googleusercontent.com/hJGHtbYSQ0nCnoEsK6AGojonjELeAh_Huxg361mVrPmzdwm8Ots-JzEH5488IS2nojI"),
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                    ),
                  ),
                  subtitle: Text(
                    title.toString(),
                    style: const TextStyle(fontSize: 7),
                  ),
                ),
                color: Colors.blueAccent,
                shadowColor: Colors.amber,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {apiCall()},
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
                  strutStyle: StrutStyle(fontSize: 14),
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
                Navigator.pop(context);
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Safety(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text("Image"),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Medical(),
                    ));
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ));
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LightPage(),
                    ));
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
              icon: Icon(Icons.image),
              label: "Image",
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
