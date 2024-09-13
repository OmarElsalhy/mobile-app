

import 'package:flutter/material.dart';
import '../styles/colors.dart';


Widget Amina({
  required Color backgroung,
  required VoidCallback fun,
  required String text,
  required String image,
}

    )=>Container(
child: MaterialButton(
minWidth: 130.0,
onPressed:fun,
color: backgroung,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10.0),
),
child: Row(
children: [
Image(image: AssetImage(image
    //'assets/images/facebook.png'
),
height: 20.0,
width: 20.0,
),
SizedBox(
width: 10.0,
),
Text(text,
style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.white
),),

],
),
),
);

Widget defultTextButton(
    {
      required VoidCallback onPressedfun,
      required String text,
      Color? color,
      String? FontFamily,
      FontWeight? FontWeight,
      double? FontSize
    }
    )=>
    TextButton(
      onPressed:onPressedfun,
      child: Text(text,
        style: TextStyle(
          color:color,
          fontFamily: FontFamily,
          fontSize: FontSize,
          fontWeight: FontWeight,
        ),),
    );



Widget FieldWidget({

  required TextInputType  type,
  String? hintText,
  required String labelText,
  required IconData iconData,
  IconData? suffixIcon,



})=> Container(

  // decoration: BoxDecoration(
  //   color: Colors.teal,
  //   borderRadius: BorderRadius.circular(20.0),
  // ),
  child:TextFormField(

    keyboardType:type,
    //cursorColor: defultColor,
    style: TextStyle(
        color: defultColor),

    decoration: InputDecoration(
        hintText:hintText,
        labelText:labelText,


        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(23.0),
          borderSide:
          BorderSide(
              color: defultColor,width: 1),
        ),
        prefixIcon: Icon(
          iconData,
          color: Colors.grey,
        ),
        suffixIcon: IconButton(
          onPressed:(){},
          icon: Icon(
            suffixIcon,
            color: Colors.grey,
          ),
        )
    ),
  ),
);


Widget ButtonWidget({
  double width=double.infinity,
  double height=44.0,
  required Color backgroung,
  required VoidCallback fun,
  required String text,
  required Color colortext,

})=>  Container(
  child: MaterialButton(
    minWidth: width,
    height:  height=50,
    color: backgroung,
    onPressed:fun,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(19.0)),
    child: Text(text,
      style:  TextStyle(
        fontSize: 18.0,
        color: colortext,
        fontWeight: FontWeight.bold,
      ),),


  ),
);

Widget accountLine({
  required VoidCallback? onPressed,
  required String textone,
  required String texttwo,
  required Color colortext,
})=> Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(textone),
      TextButton(
          onPressed:onPressed,
          child:Text(texttwo,
            style: TextStyle(
              color:colortext,
            ),))

    ],
  ),
);

void  NavigatorTo(context,widght)=> Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context)=>  widght,
    )
);
