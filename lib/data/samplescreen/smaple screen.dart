import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget{


  const SampleScreen({super.key});


  @override
  State<SampleScreen> createState() => _SampleScreenState();

}

class _SampleScreenState extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.count(crossAxisCount: 2,children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
          ),
        ),

      ],)
    );
  }
}
