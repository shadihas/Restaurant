

import 'package:flutter_transation/presentation/pages/Restaurants.dart';
import 'package:flutter_transation/presentation/pages/homePage.dart';
import 'package:flutter_transation/presentation/pages/mainPage.dart';
import 'package:flutter_transation/presentation/pages/restaurant_details_page.dart';
import 'package:get/get.dart';

class AppRoute{
static String getHomePage() => '/initial';
static String getRestaurantsPage() => '/Restaurant';
static String getDetailsPage() => '/DetailPage'; 
static List<GetPage>   routes =[
  GetPage(name: '/initial', page: ()=>HomePage(),) ,
GetPage(name: '/Restaurant', page: ()=>Restaurants() ),
GetPage(name: '/DetailPage', page: ()=>DetailsPage())

 ];
}