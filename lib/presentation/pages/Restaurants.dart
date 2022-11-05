import 'package:flutter/material.dart';
import 'package:flutter_transation/core/AppRoute.dart';
import 'package:flutter_transation/core/Dimension.dart';
import 'package:flutter_transation/core/colors.dart';
import 'package:flutter_transation/data/bodyjson.dart';
import 'package:flutter_transation/presentation/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart'; 
class Restaurants extends StatefulWidget {
  const Restaurants({ Key? key }) : super(key: key); 
  @override
  State<Restaurants> createState() => _RestaurantsState();
} 
class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
   double p1 = Dimension.pix1;
   double w1 = Dimension.w1; 
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (context,i ){
        //? ScrollableAppBar
        return[
         SliverAppBar( 
          elevation: 0,
          actions: [ 
          Icon(Icons.filter_alt_outlined,color: AppColors.longTextColor.withOpacity(0.6),size:20.sp,),
          SizedBox(width:w1*10 ,),
           Icon(Icons.search,size:20.sp,color:AppColors.longTextColor.withOpacity(0.6)),
          SizedBox(width:w1*10 ,),
          ], 
          leading: Icon(Icons.arrow_back,size: 18.sp,color: AppColors.longTextColor.withOpacity(0.8)),
           backgroundColor: AppColors.backgroundColor,
          title:
            AppText(width: 107,height: 20, text: 'Restaurants',color: AppColors.longTextColor.withOpacity(0.9),)
           ,centerTitle: true, 
       ) 
        ];
      }, body:SingleChildScrollView(
        child: Column(children: [
        //?  RestaurantsConfigBar
            Container( 
               padding: EdgeInsets.only(left: w1*7 ,top: p1*7 ,bottom: p1*2
               ),
              height: p1*37, 
              child: ListView(
                physics: ScrollPhysics(
          parent: NeverScrollableScrollPhysics()
        ),
                scrollDirection: Axis.horizontal,
               children:[
                Container( 
                  height: p1*24,
                  width: w1*97,
                  child: Center(child: AppText(color: AppColors.weightTextColor,width: 80,height: 16,text: 'Reservations',)),
                  decoration: BoxDecoration(
                    color: AppColors.longTextColor.withOpacity(1),
                    borderRadius:BorderRadius.circular(10.sp)
                  ),
                ),
                SizedBox(width: w1*7,),
                  Container(
                  height: p1*24,
                  width: w1*83,
                  child: Center(child: AppText(color: AppColors.longTextColor.withOpacity(1),width: 30,height: 15 ,text: '24/7',)),
                  decoration: BoxDecoration(
                     border:Border.fromBorderSide(BorderSide(color: AppColors.longTextColor.withOpacity(1))), 
                    borderRadius:BorderRadius.circular(10.sp)
                  ),
                ), SizedBox(width: w1*7,),
                  Container(
                  height: p1*24,
                  width: w1*77,
                  child: Center(child: AppText(color: AppColors.longTextColor.withOpacity(1),width: 50,height: 15 ,text: 'Eastern',)),
                  decoration: BoxDecoration(
                     border:Border.fromBorderSide(BorderSide(color: AppColors.longTextColor.withOpacity(1))), 
                    borderRadius:BorderRadius.circular(10.sp)
                  ),
                ), SizedBox(width: w1*7,),
                  Container(
                  height: p1*24,
                  width: w1*77,
                  child: Center(child: AppText(color: AppColors.longTextColor.withOpacity(1),width: 50,height: 15  ,text: 'Brands',)),
                  decoration: BoxDecoration(
                     border:Border.fromBorderSide(BorderSide(color: AppColors.longTextColor.withOpacity(1))), 
                    borderRadius:BorderRadius.circular(10.sp)
                  ),
                ),
                 SizedBox(width: w1*7,),
                  Container(
                   
                  height: p1*24,
                  width: w1*77,
                  child: Center(child: AppText(color: AppColors.longTextColor.withOpacity(1),width: 50,height: 15  ,text: 'Western',)),
                  decoration: BoxDecoration( 
                     border:Border.fromBorderSide(BorderSide(color: AppColors.longTextColor.withOpacity(1))), 
                    borderRadius:BorderRadius.circular(10.sp)
                  ),
                ),

               ]
              ),
            ) 
    ,
    //? RestaurantsListView
     Container( 
        height:p1*733,
         child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
           child: ListView.builder( 
             physics: ScrollPhysics(
               parent: NeverScrollableScrollPhysics()
             ),
              itemCount: 4,
               itemBuilder: (context,i){
              return
               GestureDetector(
                onTap: (){
                 Get.offNamed(AppRoute.getDetailsPage());
                },
                 child: Padding(
                   padding: EdgeInsets.only(left:w1*10,right: w1*10,top: p1*12),
                   child: Container(
               
                       child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                           Container(  
                            margin: EdgeInsets.all(w1*3),
                            height: p1*90,
                            width: w1*90,
                            decoration: BoxDecoration( 
                              image: DecorationImage(image: 
                              AssetImage(BodyJson.bodyJson[i]['image']),fit: BoxFit.fill)
                            ),
                           ),
                           SizedBox(width: w1*10,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            SizedBox(height: p1*15,),
                            Container(
                              width: w1*260,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                AppText(color: AppColors.mainColor,width: 180,height: 20, text: BodyJson.bodyJson[i]['name'],), 
                                
                                Icon(Icons.more_vert_outlined,size: 14.sp,)
                              ],),
                            ),
                            SizedBox(height: p1*8,),
                            Row(
                              children: [
                                Row(
                                  children: 
                                  List.generate(4, (index) => Icon(Icons.star_rounded,color:AppColors.starColor,size:  8.sp,)), 
                                ),
                                Icon(Icons.star_half_rounded,color: AppColors.borderSide,size: 8.sp,)
                              ],
                            ),
                            SizedBox(
                              height:p1*8,
               
                            ),
                            AppText(color: AppColors.longTextColor,width: 130,height: 15, text: BodyJson.bodyJson[i]['title'],),
                            SizedBox(
                              height:p1*8, 
                            ),
                            Container(
                              width: w1*260,
                              child: Row(
                                children: [
                                  Icon(
                                   Icons.location_on_outlined,
                                   size: 10.sp,
                                         
                                  ),
                                  SizedBox(width: w1*5,),
                                  Expanded(
                                    child: AppText(width: 280,height: 20,text: 'Lusail Fox Hills, commercial street 112, Zone 69 59' , 
                                   
                                                           
                                   
                                      color:AppColors.longTextColor ,fontSize: 10.sp,)  ),
                                  
                                ],
                              ),
                            )
                           ],),
                          ],
                        ),
                         SizedBox(height: p1*5,),
                        RestaurantDetailsWidget(w1: w1, p1: p1 , index: i,) 
                      ],
                    ),
                   width:Dimension.screenWidth,
                                    height: p1*169,
                                    decoration: BoxDecoration( 
                                       color: AppColors.backgroundColor,
                                      border: Border.fromBorderSide(
                                        BorderSide(color:AppColors.lightMainColor )), 
                                      borderRadius: BorderRadius.circular(18.sp)
                                    ),
                       ),
                 ),
               );
                }),
         ),
    ), 
      ],),)
     ) );
  }
}