import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Safety extends StatefulWidget {
  const Safety({super.key});

  @override
  State<Safety> createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Safety Page"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: const Image(
                alignment: Alignment.topCenter,
                image: NetworkImage(
                    "https://cdn.elearningindustry.com/wp-content/uploads/2020/07/workplace-safety-training-implementation-mistakes.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child:
                  const Text("COVID-19 transmission and protective measures"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Be aware of the different levels of risk in different settings. COVID-19 spreads more easily in crowded places, close-contact settings, and confined and enclosed spaces with poor ventilation. The risk is higher in places where these factors overlap.",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Be aware of the different levels of risk in different settings. COVID-19 spreads more easily in crowded places, close-contact settings, and confined and enclosed spaces with poor ventilation. The risk is higher in places where these factors overlap.",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "Be aware of the different levels of risk in different settings. COVID-19 spreads more easily in crowded places, close-contact settings, and confined and enclosed spaces with poor ventilation. The risk is higher in places where these factors overlap.",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
