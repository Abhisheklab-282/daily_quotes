

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {

  static customTextFieldContainer({required String labelText,required TextEditingController controller}){
    return SizedBox(
      width: 310,
      height: 55,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never ,
            fillColor: Color(0XFFFFFFFF),
            filled: true,
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.grey,

            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,


            )


          )

        ),
      ),

    );


  }
  static customContainer(TextEditingController controller){
    return Container(
        height: 40,
        width: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(

                border: InputBorder.none
            ),

          ),
        ));

  }
  static customTextField({required String text,required double height,Color? color,FontWeight? fontWeight }){
    return Text(text,style: TextStyle(
        fontSize:height,
        color:color??Colors.black,
        fontWeight: fontWeight


    ),);

  }
  static customButton({required VoidCallback callback , required String buttonName, required Color? color,required double height,required double width,}){
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(onPressed: (){
        callback();
      }, style: ElevatedButton.styleFrom(
        elevation: 10,
          backgroundColor: Color(0XFFEC9FE9),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
          )

      ),
          child: Text(buttonName,style: TextStyle(fontSize:16 ,color: color),)),

    );
  }

  static sizeScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static sizeScreenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }



}
