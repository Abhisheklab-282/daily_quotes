 import 'dart:io';

import 'package:daily_qoutes/screen/quote/bottamtapscreen/profile%20screen.dart';
import 'package:daily_qoutes/screen/quote/quotes%20screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/ui/uihelper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
 File? pickedImage;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,

        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/imgbaack.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Profile Type",
                style: TextStyle(
                    fontFamily: "bold",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 20,
                      shadowColor: Colors.black,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/images/individual image.png",
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Individual",
                        style: TextStyle(
                            fontFamily: "bold",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87))
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 20,
                      shadowColor: Colors.black,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300,
                          ),
                          width: 150,
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Image.asset(
                              "assets/images/businesses img.png",
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Business",
                        style: TextStyle(
                            fontFamily: "bold",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                  ],
                ),
              ],
            ),
             Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: BottomNavigationBarTheme(
                      data: BottomNavigationBarThemeData(
                          backgroundColor: Colors.transparent, elevation: 2 ),

                      child: Padding(
                        padding: const EdgeInsets.only(top: 42.65),
                        child: Container(
                          width: double.infinity,
                          height: 390,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(40)),
                              color: Colors.grey.shade300,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 15,
                                  offset: Offset(0, -5),
                                )
                              ]),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  customTextField(hintText: " Name"),
                                  SizedBox(height: 10,),
                                  customTextField(hintText: " Address"),
                                  SizedBox(height: 10,),
                                  customTextField(hintText: " Email",),
                                  SizedBox(height: 10,),
                                  customTextField(hintText: "Phone Number", inputType: TextInputType.phone),
                                  SizedBox(height: 20,),
                                  UiHelper.customButton(callback: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>QuotesScreen()));
                                  }, buttonName: "Continue", color: Colors.black, height: 40, width: 150)


                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 15,)],
                      ),
                      child: GestureDetector(
                        onTap: (){
                          onTapBottomSheet(context);
                        },
                        child:
                        pickedImage == null?
                          CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.15,
                          backgroundColor: Colors.grey.shade300,
                          backgroundImage: AssetImage("assets/images/dwn.png"),
                        ):CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.15,
                          backgroundImage: FileImage(pickedImage!),


                      )


                      )
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),


    );
  }

  Widget customTextField({
    required String hintText,
     TextInputType? inputType,
  }) {
    return Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: Offset(0, 5),)],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white38
      ),child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black87,
          ),
          border: InputBorder.none,
        )
            ),
      ),
    );

  }
  onTapBottomSheet(BuildContext context){
    return showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              imagePicker(ImageSource.camera);

            }, icon: Icon(Icons.camera_alt, size: 50, color: Colors.black87)),
            IconButton(onPressed: (){
              imagePicker(ImageSource.gallery);

            }, icon: Icon(Icons.photo_library, size: 50, color: Colors.black87))
          ],
        ),
      );
    }
    );
  }

  imagePicker(ImageSource source) async{
    try{
      final image =  await ImagePicker().pickImage(source: source);
      if(image == null)return;
      final tempImage = File(image.path);
      setState(() {
        pickedImage = tempImage;
      });
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen(pickedImage: pickedImage)));
    }catch(e){
      return
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to pick image")));
    }


    }

}






