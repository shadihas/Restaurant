import 'package:flutter/material.dart';
import 'package:flutter_transation/core/Dimension.dart';
import 'package:flutter_transation/core/colors.dart';
import 'package:flutter_transation/presentation/pages/Restaurants.dart';
import 'package:flutter_transation/presentation/pages/mainPage.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  

  int sel = 0;
  List pages =[
  MainPage() ,
  Restaurants() ,
  Container() , 
  
  ];
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      
      body: pages[sel],
      bottomNavigationBar: Stack(  
        children: [
          BottomNavigationBar(  
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 8.sp
            ),
            unselectedLabelStyle:  TextStyle(
              fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 8.sp
            ),
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 8.sp,
            unselectedFontSize: 8.sp, 
            currentIndex: sel,
            onTap: (value) { 
            setState(() {
                sel = value; 
            });
            },
            backgroundColor: AppColors.mainColor,
            selectedItemColor:Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
           unselectedItemColor: Colors.white, 
            items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.mainColor,
                icon:sel==0? Icon(Icons.home,size: 18.sp,):Icon(Icons.home_outlined,size: 18.sp),label: 'Home',),
               BottomNavigationBarItem(
                backgroundColor: AppColors.mainColor,
                icon:sel==1? Icon(Icons.lunch_dining_rounded,size: 18.sp):
                 Icon(Icons.lunch_dining_outlined,size: 18.sp), label: 'restaurants'),
                BottomNavigationBarItem(
                  backgroundColor: AppColors.mainColor,
                  icon: sel==2? Icon(Icons.flag,size: 18.sp):
                 Icon(Icons.flag_outlined,size: 18.sp), label: 'Reservations',), 
            ]),
        ],
      ),
    );
  }
}