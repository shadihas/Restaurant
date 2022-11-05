import 'dart:convert'; 
import 'package:flutter/material.dart';
import 'package:flutter_transation/core/Dimension.dart';
import 'package:flutter_transation/core/colors.dart';
import 'package:flutter_transation/data/listViewjson.dart';
import 'package:flutter_transation/presentation/widgets/widgets.dart';
import 'package:sizer/sizer.dart'; 
class MainPage extends StatefulWidget { 
  const MainPage({ Key? key }) : super(key: key); 
  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  
  @override
  Widget build(BuildContext context) {
    double pix5 = Dimension.pix5;
    double pix4 = Dimension.pix4;
    double pix3 = Dimension.pix3;
    double pix2 = Dimension.pix2;
    double pix1 = Dimension.pix1; 
    double w1 = Dimension.w1; 
    return Scaffold(
      body: 

       NestedScrollView(headerSliverBuilder: (context,i ){
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
            AppText(width: 107,height: 20, text: 'HOME',color: AppColors.longTextColor.withOpacity(0.9),)
           ,centerTitle: true, 
       ) 
        ];
      }, 
       body:SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            //? FeaturedRestaurantsTitle
          Padding(
            padding:  EdgeInsets.only(left:w1*11,bottom: pix2,top:pix2),
            child: AppText(color: AppColors.mainColor, text: 'Featured Restaurants',fontWeight: FontWeight.w600,),
          )
          //? FeaturedRestaurantsListView
         , Container(
          
          height: Dimension.pix100+ Dimension.pix10+pix5,
          width: Dimension.screenWidth, 
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (context,index){
               Map i = ListJson.listJson[index];
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container( 
                      width:w1*84,
                      height: Dimension.pix70 +pix1,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(i['image']),fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                       padding: EdgeInsets.only(left: w1*3 ,right: w1*3),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          AppText(width:71 ,height: 13,text:i['title'],color: AppColors.arrowTitle,),
                   Row(children: [
                           Row(
      children :
       List.generate(4, (index) => Icon(Icons.star_rounded,size : 8.sp,color:AppColors.starColor,))),
                          Icon(Icons.star_half_rounded,size : 8.sp,color:AppColors.starColor,), 
                   ],) ,
                          AppText(width:31 ,height: 11,text:i['state'],color:Color(0xff6D8B4A),),
                        ],
                      ),
                    )
                  ],          ),
               margin: EdgeInsets.only(left:Dimension.pix10 +pix1), 
                width: w1*84,
                decoration: BoxDecoration(
                  border:Border.fromBorderSide(BorderSide(color: AppColors.borderSide)), 
                 borderRadius: BorderRadius.circular(w1*11) 
                 
                ),
              );
            }),
          ),
          SizedBox(height: pix5,),
          Center(child: AppText(width:58 ,height: 18,color: AppColors.lightMainColor, text: 'view all')),
            SizedBox(height: pix5+pix5,),
          //? postBody
          //! 1-
           Padding(
              padding:  EdgeInsets.only(left:w1*20,bottom: Dimension.pix10,top: Dimension.pix10),
             child: Row(
              children: [
                Container(
                    width:w1*50,
                        height: Dimension.pix50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/listView2.png'),fit: BoxFit.fill)
                        ),
                        
                ),
                SizedBox(width: w1*10,),
                Column(
                  children: [
                     AppText(width:65 ,height: 16,color:AppColors.mainColor , text: 'Kentucky'),
                    AppText(width:65 ,height: 13,color:AppColors.lightTextColor , text: '5 hours ago',)
                  ],
                )
              ],
             ),
           ),
           Padding(
      
             padding: EdgeInsets.symmetric(horizontal: w1*11),
             child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ', style: TextStyle( color: AppColors.longTextColor.withOpacity(0.8),fontSize: 10.sp,),maxLines: 2, ),
           
           AppText(width:65 ,height: 16,color: AppColors.lightMainColor, text: 'more...',)
            
            , Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
           width:Dimension.screenWidth,
                            height: Dimension.pix100*2,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('images/body1.png'),fit: BoxFit.fill)
                             , borderRadius: BorderRadius.circular(8.sp)
                            ),
      
        ),
        Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
                Row(
                  children: [
                    SizedBox(width : w1*5,),
                    Icon(Icons.phone,size: 10.sp,color: Colors.white.withOpacity(0.8),),
                    SizedBox(width : w1*5,),
                    AppText(width:84 ,height: 16,color: Colors.white.withOpacity(0.8), text: '054-5583925',)
                  ],
                ),
                 SizedBox(width: w1*1,),
                 Row(
                  children: [
                    SizedBox(width : w1*5,),
                     Container(
             width:w1*15,
                              height: pix5*3,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('images/Instagram.png')) 
                              ),),
                    SizedBox(width : w1*5,),
                    AppText(color: Colors.white.withOpacity(0.8),width:75 ,height: 16, text: 'kentucky.hig',),
                  ],
                ),
                 SizedBox(width:w1,),
                 Row(
                  children: [
                    SizedBox(width : w1*5,),
                    Icon(Icons.location_on_outlined,size: 10.sp,color: Colors.white.withOpacity(0.8),),
                    SizedBox(width : w1*5,),
                    AppText(color: Colors.white.withOpacity(0.8),width:50 ,height: 14, text: 'jhyg-jd',),
                     SizedBox(width : w1*5,),
                  ],
                ),
              ],
            ),
          ),
            decoration: BoxDecoration( 
                             color: AppColors.orangeApp.withOpacity(0.76),
                             borderRadius: BorderRadius.circular(w1*10)),
          height: pix5*5,
          width: Dimension.screenWidth,
        )
              ],
            )
             ],)
             ),
             SizedBox(height: pix5*2,),
              //! 2-
                Padding(
             padding: EdgeInsets.symmetric(horizontal: w1*20),
             child: Row(
              children: [
                Container( 
                    width:w1*50,
                        height: Dimension.pix50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/3.png'),fit: BoxFit.cover)
                        ),
                        
                ),
                SizedBox(width : w1*5*2,),
                Column(
                  children: [
                     AppText(width:65 ,height: 16,color:AppColors.mainColor , text: 'Kentucky'),
                    AppText(width:65 ,height: 13,color:AppColors.lightTextColor , text: '5 hours ago',)
                  ],
                )
              ],
             ),
           ),
           Padding( 
             padding: EdgeInsets.symmetric(horizontal: w1*11),
             child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ', style: TextStyle(fontSize:10.sp , color: AppColors.longTextColor.withOpacity(0.8),),maxLines: 2, ),
           
           AppText(width:65 ,height: 16,color: AppColors.lightMainColor, text: 'more...',)
            
            ,  Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
           width:Dimension.screenWidth,
                            height: Dimension.pix100*1.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('images/body2.png',),fit: BoxFit.cover)
                             , borderRadius: BorderRadius.circular(8.sp)
                            ),
      
        ),
        
              ],
            )
             ],)
             ),        
                ],)
      )) 
      
    );
  }
}

