import 'package:flutter/material.dart';
import 'package:flutter_transation/core/Dimension.dart';
import 'widgets.dart'; 
class AppText extends StatelessWidget {
  String text;
  Color color;
  int? maxLine;
  int width;
  int height;
  FontWeight? fontWeight =FontWeight.w500;
  double? fontSize = Dimension.w1*18 ;
   AppText({
    this.width=180,
    this.height =20,
    this.maxLine = 1,
    this.fontWeight,
    this.fontSize,
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  Dimension.w1*width,
      height: Dimension.pix1*height,
      child: FittedBox(
        alignment: Alignment.centerLeft,
        child: Text(text,
        maxLines: maxLine,
           overflow: TextOverflow.ellipsis, 
         style: TextStyle(
          fontFamily:'Montserrat', 
          fontSize:fontSize,fontWeight: fontWeight,color:color),
            ),
      ),
    );
  }
} 