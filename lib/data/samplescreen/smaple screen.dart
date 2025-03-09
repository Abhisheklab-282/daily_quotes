import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SampleScreen extends StatefulWidget {
  final dynamic keyPath;
  final dynamic dataKey;
  final dynamic title;
  final dynamic description;

  const SampleScreen(
      {super.key,
      required this.keyPath,
      required this.dataKey,
      required this.title,
      required this.description});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  Map<String, dynamic>? data;

  @override
  Widget build(BuildContext context) {
    var dataKey = widget.dataKey;
    var title = widget.title;
    var description = widget.description;

    return Scaffold(
      body: GridView.builder(
        itemCount: data?[dataKey].length,
        gridDelegate: gridDelegate,
        itemBuilder: (context, index) {
          final item = data?[dataKey][index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey.shade600,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color: Colors.black

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          item[title].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        item[description].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "playfair",
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 5,
    mainAxisSpacing: 5,
    childAspectRatio: 0.75,
  );

  @override
  void initState() {
    super.initState();
    _loadQuotes();
  }

  void _loadQuotes() async {
    var keyPath = widget.keyPath;

    var response = await rootBundle.loadString(keyPath);

    if (response.isNotEmpty) {
      setState(() {
        data = json.decode(response);
      });
    } else {
      print("Error");
    }
  }
}
