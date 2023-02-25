// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
// unnecessary_import
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
// ignore: unused_import
import 'package:flutter/src/widgets/placeholder.dart';

// ignore: unused_import
import '../screen/BottomNavigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Training"),
      ),
      body: Container(
        margin: const EdgeInsets.all(5),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: const [
                    Text(
                      "Monabbir",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple
                          ),
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.deepPurple
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    ),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014__340.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Text("welcome"),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.all(5),
                  elevation: 4,
                  shadowColor: Colors.amber,
                  color: Colors.pink,
                  child: Text("Monabbirhasan"),
                ),
              ),
              FloatingActionButton(
                // ignore: avoid_print
                onPressed: () => {print("Welcome")},
                backgroundColor: Colors.blue,
                child: Title(
                  color: Colors.amber,
                  child: const Text(
                    "Click",
                    selectionColor: Colors.pink,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Monabbir"),
              accountEmail: Text("hmd32@gmail.com"),
            ),
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text("User Account"),
            ),
            ListTile(
              title: Text("hello"),
              leading: Icon(Icons.home_filled),
              onTap: null,
            ),
            ListTile(
              title: Text("hello"),
              leading: Icon(Icons.home_filled),
              onTap: null,
            ),
            ListTile(
              title: Text("hello"),
              leading: Icon(Icons.home_filled),
              onTap: null,
            ),
            ListTile(
              title: Text("hello"),
              leading: Icon(Icons.home_filled),
              onTap: null,
            ),
            ListTile(
              title: Text("hello"),
              leading: Icon(Icons.home_filled),
              onTap: null,
            ),
            ListTile(
              title: Text("hello"),
              leading: Icon(Icons.home_filled),
              onTap: null,
            ),
           
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: null,
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          
        ],
      ),
    );
  }
}
