import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: const Image(
                image: NetworkImage(
                    "https://pub-static.fotor.com/assets/text_to_image/demos/24.png"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                "AI Image Generator: Text to Image in Seconds for Free"
                    .toUpperCase(),
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
