import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class DrawerNavigation extends StatelessWidget {
  // const DrawerNavigation({super.key});
  var SideBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Monabbir"),
              accountEmail: Text("Monabbir@gmail.com"),
              currentAccountPicture: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWxTZxQhNEWd9UReV70-1nIDHT5OwPCT3JhfK75T5O2485hS0Css7NYGPMVEu_U0FupWA&usqp=CAU")),
            ),
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: NetworkImage(
            //           "https://static.fotor.com/app/features/img/aiimage/Cyberpunk/a%20cyberpunk%20women%20wearing%20special%20glasses%20in%20virtual%20metaverse%20space.png"),
            //     ),
            //   ),
            //   child: Text("Monabbir"),
            // ),

            ListTile(
              title: const Text("Home", textAlign: TextAlign.justify),
              leading: const Icon(Icons.home),
              iconColor: Colors.blue,
              hoverColor: Colors.deepOrangeAccent,
              textColor: Colors.black,
              // tileColor: Colors.amber,
              subtitle: const Text(
                "Our Home",
                style: TextStyle(fontSize: 10),
              ),
              selectedTileColor: Colors.blue,
              onTap: () {
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                print("Home ${SideBarIndex}");
               
              },
            ),
            ListTile(
              title: const Text("person"),
              leading: const Icon(Icons.person),
              iconColor: Colors.amber,
              hoverColor: Colors.deepOrangeAccent,
              textColor: Colors.black,
              // tileColor: Colors.amber,
              subtitle: const Text(
                "Our person",
                style: TextStyle(fontSize: 10),
              ),
              selectedTileColor: Colors.blue,
              onTap: () {
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                print("person ${SideBarIndex}");
               
              },
            ),
            ListTile(
              title: const Text("room_service"),
              leading: const Icon(Icons.room_service),
              iconColor: Colors.amber,
              hoverColor: Colors.deepOrangeAccent,
              textColor: Colors.black,
              // tileColor: Colors.amber,
              subtitle: const Text(
                "Our room_service",
                style: TextStyle(fontSize: 10),
              ),
              selectedTileColor: Colors.blue,
              onTap: () {
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                print("room_service ${SideBarIndex}");
               
              },
            ),
            ListTile(
              title: const Text("account_balance"),
              leading: const Icon(Icons.account_balance),
              iconColor: Colors.amber,
              hoverColor: Colors.deepOrangeAccent,
              textColor: Colors.black,
              // tileColor: Colors.amber,
              subtitle: const Text(
                "Our account_balance",
                style: TextStyle(fontSize: 10),
              ),
              selectedTileColor: Colors.blue,
              onTap: () {
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                print("account_balance ${SideBarIndex}");
              
              },
            ),
            ListTile(
              title: const Text("account_balance"),
              leading: const Icon(Icons.account_balance),
              iconColor: Colors.amber,
              hoverColor: Colors.deepOrangeAccent,
              textColor: Colors.black,
              // tileColor: Colors.amber,
              subtitle: const Text(
                "Our account_balance",
                style: TextStyle(fontSize: 10),
              ),
              selectedTileColor: Colors.blue,
              onTap: () {
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                print("account_balance ${SideBarIndex}");
               
              },
            ),
            ListTile(
              title: const Text("safety_check"),
              leading: const Icon(Icons.safety_check),
              iconColor: Colors.amber,
              hoverColor: Colors.deepOrangeAccent,
              textColor: Colors.black,
              // tileColor: Colors.amber,
              subtitle: const Text(
                "Our safety_check",
                style: TextStyle(fontSize: 10),
              ),
              selectedTileColor: Colors.blue,
              onTap: () {
                // ignore: avoid_print, unnecessary_brace_in_string_interps
                print("safety_check ${SideBarIndex}");
               
              },
            ),
          ],
        ),
      ),
    );
  }
}
