import 'package:flutter/material.dart';
import 'package:flutter_transation/core/AppRoute.dart';
import 'package:flutter_transation/presentation/pages/Restaurants.dart';
import 'package:flutter_transation/presentation/pages/mainPage.dart';
import 'package:flutter_transation/presentation/pages/restaurant_details_page.dart'; 
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'presentation/pages/homePage.dart';

void main() {
  runApp(const MyApp());
} 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) { 
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp( 
         getPages:AppRoute.routes,
          debugShowCheckedModeBanner: false,  
          initialRoute:AppRoute.getHomePage(),
            
             
        );
      }
    );
  }
}

