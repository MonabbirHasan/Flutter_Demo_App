import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Medical extends StatefulWidget {
  const Medical({super.key});

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: const Image(
                  image: NetworkImage(
                      "https://www.cdc.gov/nchs/images/hus/topics/Health-Care-Expenditures-800x500.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: const Text(
                  "Why is ORCID good for you?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: const Text(
                    "F1000 is a member organization of ORCID and supports the use of ORCID iDs where possible. For this reason, it is mandatory that the submitting author completes their submission using an ORCID iD. The process of getting an ORCID iD is quick, easy and incurs no cost. This can be set up during the article submission process, or via your details section on the My pages at any time. Additionally, co-authors are given the opportunity to connect their ORCID iDs via a link we send on the publication of the article."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
