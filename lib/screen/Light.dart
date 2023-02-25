import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LightPage extends StatefulWidget {
  const LightPage({super.key});

  @override
  State<LightPage> createState() => _LightPageState();
}

class _LightPageState extends State<LightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Light Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: const Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1364859722/photo/artificial-intelligence-concept.jpg?b=1&s=170667a&w=0&k=20&c=eHRkMLmlR79tWkAuR0_eJCerG4xNP7iPMgjqE3mzbZU="),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "NEW FLUTTER APPLICATIONS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
