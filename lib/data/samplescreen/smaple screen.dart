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
            child: GestureDetector(
              onTap: (){
                _onItemTapped(context,item[title],item[description]);
              },
              child: Card(
                elevation: 18,
                shadowColor: Colors.grey.shade700,
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
  
  
  _onItemTapped(BuildContext context,String item1,String item2) {
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        elevation: 10,
        shadowColor: Colors.grey.shade700,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),

        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black,width: 2),
          borderRadius: BorderRadius.circular(15)
        ),content: SizedBox(
        height: 300,
        width: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 25,color: Colors.black54,)),
            ),
            Text('"$item1"',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontFamily: "Rubik-Bold.ttf"),),
            Text(item2,style: TextStyle(fontSize: 20,fontFamily: "playfair"),),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.bookmark,size: 20,color: Colors.black54,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.share,size: 20,color: Colors.black54,)),
              ],
            )



          ],
        )

      ),

      );

    });


  }
}
