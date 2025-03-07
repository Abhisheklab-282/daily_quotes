

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {

  static customTextFieldContainer({required String hintText,required TextEditingController controller}){
    return SizedBox(
      width: 310,
      height: 55,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: Color(0XFFFFFFFF),
            filled: true,
            hintText: hintText,
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
  static customTextField({required String text,required double height,Color? color,FontWeight? fontWeight}){
    return Text(text,style: TextStyle(
        fontSize:height,
        color:color??Colors.black,
        fontWeight: fontWeight
    ),);

  }
  static customButton({required VoidCallback callback , required String buttonName}){
    return SizedBox(
      height: 44,
      width:320,
      child: ElevatedButton(onPressed: (){
        callback();
      }, style: ElevatedButton.styleFrom(
        elevation: 10,
          backgroundColor: Color(0XFF9467C1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
          )

      ),
          child: Text(buttonName,style: TextStyle(fontSize:16 ,color: Color(0XFFFFFFFF)),)),

    );
  }

}
