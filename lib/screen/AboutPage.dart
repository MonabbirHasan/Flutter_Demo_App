import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          children: List.generate(21, (index) {
            return Center(
              child: Card(
                shadowColor: Colors.amber,
                color: const Color.fromARGB(255, 255, 153, 0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Image(
                          image: NetworkImage(
                              "https://media.mutualart.com/Images/Articles/03_2022/17/bd930400-12c1-441a-a72a-4c498a4c9bb5-Disco%20Diffusion%20_%20Chris%20Stewart.Jpeg"),
                          fit: BoxFit.cover,
                          width: 152,
                          height: 120,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: const Text(
                            "Monabbir",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
