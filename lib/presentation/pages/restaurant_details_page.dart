
import 'package:flutter/material.dart';
import 'package:flutter_transation/core/AppRoute.dart';
import 'package:flutter_transation/core/Dimension.dart';
import 'package:flutter_transation/core/colors.dart'; 
import 'package:flutter_transation/presentation/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class DetailsPage extends StatefulWidget {
  const DetailsPage({ Key? key }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
} 
class _DetailsPageState extends State<DetailsPage> {
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
          leading: GestureDetector(
           onTap: (){
             Get.offNamed(AppRoute.getRestaurantsPage());
          },
          child: Icon(Icons.arrow_back,size: 18.sp,color: AppColors.longTextColor.withOpacity(0.8))),
           backgroundColor: AppColors.backgroundColor,
          title:
            AppText(width: 107,height: 20, text: 'Restaurants',color: AppColors.longTextColor.withOpacity(0.9),)
           ,centerTitle: true, 
       ) 
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          children: [
            //? RestaurantImage
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height:p1*190 ,
                  width: Dimension.screenWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/details.png'),fit: BoxFit.fill)
      
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w1*3,bottom: p1*10),
                        child: Container(
                          height: p1*82,
                          width: w1*80,
                          decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/sub3.png'),fit: BoxFit.fitWidth) 
                  ),
                        ),
                      ),
                      Padding(
                       padding: EdgeInsets.only(bottom: p1*20,left: w1*20),
                        child: AppText(width: 250,height: 29, color: Colors.white,text: 'YAKUT Restaurant',fontWeight: FontWeight.w700,),
                      ),
                      SizedBox(width: w1*20,)
                    ],
                  ),
                  
                ),
                 
                  
                
                
              ],
            )
         //? RestaurantConfigBar
          ,Container(
        height: p1*61,
        width: Dimension.screenWidth,
        color: AppColors.mainColor,
        child: Padding(
          padding:EdgeInsets.only(top: p1*10,left: w1*30,right: w1*30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.home,color: Colors.white.withOpacity(0.9),size: 16.sp,),
                  SizedBox(height: p1*5,),
                  AppText(width:67 ,height:13 , color: Colors.white.withOpacity(0.9), text: 'Home Page',)
                ],
              )
               ,Column(
                children: [
                  Icon(Icons.menu_book,color: Color(0xFFE3E3E3).withOpacity(0.5),size: 12.sp,),
                  SizedBox(height: p1*5,),
                  AppText(width:40 ,height:13,color: Color(0xFFE3E3E3).withOpacity(0.5), text: 'Menu',)
                ],
              ),
              Column(
                children: [
                  Icon(Icons.star,color:Color(0xFFE3E3E3).withOpacity(0.5),size: 12.sp,),
                  SizedBox(height: p1*5,),
                  AppText(width:50 ,height:13,color: Color(0xFFE3E3E3).withOpacity(0.5), text: 'Reviews',)
                ],
              ),
              
            ],
          ),
        ),
          ),
          Padding(
        padding: EdgeInsets.only(left:w1*22, right: w1*40,top: p1*13,bottom: p1*20),
        //? Description
        child: Text( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis'
        ,overflow: TextOverflow.ellipsis, maxLines: 2,
        style: TextStyle(fontSize: 11.sp ),
        ),
          )  ,
          //? Contact
          Container( 
        height: p1*37,
        width: Dimension.screenWidth/1.2, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppText(width:40,height: 12,color: AppColors.longTextColor, text: 'Open',),
               SizedBox(width: w1*20,),
              Container(
                height: p1*8,
              width:w1*8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.circle
              ),
              ),
               SizedBox(width: w1*100,),
              Row( children: [
                 Container(
                  width: w1*11,
                  height: p1*11,
                  child: FittedBox(child: Icon(Icons.phone_outlined,color: AppColors.mainColor,size: 10.sp,))),
                SizedBox(width: w1*1,),
                 AppText(width:100,height: 12,color: AppColors.mainColor, text: '+974 9876 543 987',)
              ],
              ),
              
            ],),
            SizedBox(height: p1*5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppText(width:60,height: 12,color: AppColors.longTextColor, text: 'Closes at :',),
              
              AppText(width:60,height: 12,color: AppColors.lightMainColor.withOpacity(0.9), text: '8:00 PM',fontWeight: FontWeight.w600,),
              SizedBox(width: w1*20,),
              Row( children: [
                 Container(
                  width: w1*11,
                  height: p1*11,
                   child: FittedBox(
                    child: Icon(Icons.phone_outlined,color: AppColors.mainColor,size:  10.sp,)),
                 ), 
                 AppText(width:100,height: 12,color: AppColors.mainColor, text: '+974 9876 543 988',)
              ],
              ),
              
            ],),
          ],
        ),
          ),
          SizedBox(height: p1*20,),
          //? foodList
           Container(
        width:Dimension.screenWidth ,
        height: p1*148,
         child: ListView.builder(
                    physics: ScrollPhysics(
              parent: NeverScrollableScrollPhysics()
            ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3, 
                 itemBuilder:  (context,index){
      return Padding( 
        padding: EdgeInsets.only(left: w1*13,right: w1*6),
        child:   Container( 
          alignment: Alignment.centerLeft,
         height: p1*148, 
         width:index==2?p1*80: p1*148, 
        decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(w1*10) 
        ),
        child: Image(image: AssetImage('images/Rectangle${(index+1).toString()}.png'),fit: BoxFit.fill,),
        ),
      );       })
           ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //? view more
                  Column(
                    children: [
                      AppText(width: 80,height: 15 ,color: AppColors.lightMainColor, text: 'View more ...' ,),
                      Container(color: AppColors.lightMainColor,height: p1*1, width: w1*80,),
                    ],
                  ),
                  SizedBox(width: w1*12,)
                ],
              ),
          
           SizedBox(height: p1*16,),
         //?  Restaurant's Details
        Padding(
         padding: EdgeInsets.only(top: p1*9,left:w1*11,right: w1*11 ),
          child: Container(
             width:Dimension.screenWidth,
                                    height: p1*169,
                                    decoration: BoxDecoration( 
                                      color: AppColors.backgroundColor,
                                      border: Border.fromBorderSide(
                                        BorderSide(color:AppColors.lightMainColor )), 
                                      borderRadius: BorderRadius.circular(w1*25)
                                    ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                        children: [  
                            Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top:p1*10,left:w1*27,bottom: p1*5,right: w1*27),
                                child: Column(
                                  children: [ 
                                    AppText(width:60,height: 45,color: AppColors.mainColor, text: '4.7',fontWeight: FontWeight.w700,)
                                    ,SizedBox(height: p1*8,),
                                     Row(
                            children: [
                                Row(
                                  
                                  children: 
                                  List.generate(4, (index) => Icon(Icons.star_rounded,color:AppColors.starColor,size:  10.sp,)), 
                                ),
                                Icon(Icons.star_half_rounded,color: AppColors.starColor,size: 10.sp,)
                            ],
                          ),
                          SizedBox(height: p1*10,),
                          AppText(width:60,height: 15,color: AppColors.longTextColor, text: 'Total: 265',)
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: p1*13),
                                child:
                                 Container(color: Color(0xFFCD3C0C),height: p1*83, width: w1*1.2,),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: w1*19,top:p1*22, bottom: p1*5,right: w1*10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      AppText(width:9,height: 12,color: AppColors.longTextColor, text: '5',),
                                     SizedBox(width: w1*5,),
                                         Container(
                                         
                                          decoration: BoxDecoration(
                                             color: AppColors.lightMainColor,
                                          borderRadius: BorderRadius.circular(w1*4)  
                                          ),
                                          width: w1*53, height: p1*4,),
                                    
                                    ],),
                                     SizedBox(height: p1*6,),
                                      Row(children: [
                                      AppText(color: AppColors.longTextColor,width:9,height: 12, text: '4',),
                                     SizedBox(width: w1*5,),
                                         Container(
                                         
                                          decoration: BoxDecoration(
                                             color: AppColors.lightMainColor,
                                          borderRadius: BorderRadius.circular(w1*4)  
                                          ),
                                          width: w1*184, height: p1*4,),
                                    
                                    ],),
                                    SizedBox(height: p1*6,),
                                     Row(children: [
                                      AppText(color: AppColors.longTextColor,width:9,height: 12, text: '3',),
                                     SizedBox(width: w1*5,),
                                         Container(
                                         
                                          decoration: BoxDecoration(
                                             color: AppColors.lightMainColor,
                                          borderRadius: BorderRadius.circular(w1*4)  
                                          ),
                                          width: w1*10, height: p1*4,),
                                    
                                    ],),
                                        SizedBox(height: p1*6,),
                                     Row(children: [ 
                                      AppText(color: AppColors.longTextColor,width:9,height: 12, text: '2',),
                                     SizedBox(width: w1*5,),
                                         Container(
                                         
                                          decoration: BoxDecoration(
                                             color: AppColors.lightMainColor,
                                          borderRadius: BorderRadius.circular(w1*4)  
                                          ),
                                          width: w1*26, height: p1*4,),
                                    
                                    ],),
                                    SizedBox(height: p1*6,),
                                     Row(children: [
                                      AppText(color: AppColors.longTextColor,width:9,height: 12, text: '1',),
                                     SizedBox(width: w1*5,),
                                         Container(
                                         
                                          decoration: BoxDecoration(
                                             color: AppColors.lightMainColor,
                                          borderRadius: BorderRadius.circular(w1*4)  
                                          ),
                                          width: w1*8, height: p1*4,),
                                    
                                    ],)
                                  ],
                                ),
                              )
                            ],
                          ),  
                           RestaurantDetailsWidget(w1: w1, p1: p1) 
                          , 
                        ],
                      ),
          ),
        ),
        //? Restaurant's Rules
         Padding(
          padding: EdgeInsets.only(top: p1*9,left:w1*11,right: w1*11 ),
          child: Container( 
            child: Padding(
              padding:  EdgeInsets.all(w1*20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [ 
                       Icon(Icons.restaurant_menu_rounded,color: AppColors.orangeApp,size: 12.sp,),
                       SizedBox(width: w1*10,) ,
                       AppText(color: AppColors.arrowTitle,width:100,height: 15, text:'Restaurant',)      
                        ],
                      ),
                      SizedBox(width: w1*70,),
                       Row(
                        children: [ 
                       Icon(Icons.lunch_dining_rounded,color: AppColors.orangeApp,size: 12.sp,),
                       SizedBox(width: w1*10,) ,
                       AppText(color: AppColors.arrowTitle,width:100,height: 15, text:'Eastern',)      
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: p1*15,),
                   Row(
                    children: [
                      Row(
                        children: [
                   
                       Icon(Icons.remove_red_eye_outlined,color: AppColors.orangeApp,size: 12.sp,),
                       SizedBox(width: w1*10,) ,
                       AppText(color: AppColors.arrowTitle,width:100,height: 15, text:'4.8 K views',)      
                        ],
                      ),
                      SizedBox(width: w1*70,),
                       Row(
                        children: [ 
                       Icon(Icons.no_drinks_outlined,color: AppColors.orangeApp,size: 12.sp,),
                       SizedBox(width: w1*10,) ,
                       AppText(color: AppColors.arrowTitle,width:100,height: 15, text:'No Alcohol',)      
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
                            width:Dimension.screenWidth,
                                    height: p1*95,
                                    decoration: BoxDecoration( 
                                      color: AppColors.backgroundColor,
                                      border: Border.fromBorderSide(
                                        BorderSide(color:AppColors.borderSide )), 
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(p1*20))
                                    ),
                           
                          ),
        )
           
           ],
        ),
      ),
      
    ));
  }
}

