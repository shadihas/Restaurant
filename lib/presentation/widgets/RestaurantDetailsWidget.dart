import 'package:flutter/material.dart';
import 'package:flutter_transation/core/colors.dart';
import 'package:flutter_transation/presentation/widgets/widgets.dart';

class RestaurantDetailsWidget extends StatelessWidget {
   RestaurantDetailsWidget({
    Key? key,
    this.index,
    required this.w1,
    required this.p1,
  }) : super(key: key);
  int? index;
  final double w1;
  final double p1;

  @override
  Widget build(BuildContext context) {
    return Container( 
     alignment: Alignment.center,
     child: Row( 
       mainAxisAlignment: MainAxisAlignment.center,
       children: [ 
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           AppText(width:50,height: 12,color: AppColors.longTextColor, text: 'Food',),
            AppText(color: AppColors.longTextColor,width:37,height: 12, text: '3.7')
         ],),
          SizedBox(width: w1*15,),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           AppText(color: AppColors.longTextColor,width:50,height: 12, text: 'Service',),
            AppText(color: AppColors.longTextColor,width:37,height: 12, text: '4.6')
         ],),
          SizedBox(width: w1*20,),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           AppText(color: AppColors.longTextColor,width:50,height: 12, text: 'Shisha',),
            AppText(color: AppColors.longTextColor,width:37,height: 12, text: '3.0')
         ],),
          SizedBox(width: w1*20,),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           AppText(color: AppColors.longTextColor,width:60,height: 12, text: 'Ambiance',),
            AppText(color: AppColors.longTextColor,width:37,height: 12, text: '4.0')
         ],),
          SizedBox(width: w1*20,),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           AppText(color: AppColors.longTextColor,width:64,height: 12, text: 'Noise Level',),
            AppText(width:37,height: 13,color: AppColors.longTextColor, text: 'Low')
         ],)
       ],
     ),
     decoration: BoxDecoration(
        color:index ==2?AppColors.lightPurple:  AppColors.lightPink,
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(w1*25))
     ),
     height: p1*53.9,
     
                          );
  }
}