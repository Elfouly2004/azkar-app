import 'package:azkar/setting.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:azkar/morning%20zekr.dart';
import 'package:azkar/night.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:jhijri/jHijri.dart';
class home extends StatefulWidget{
  // const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {

  exit(){
     exit();
  }
  int click=0;

  check1(){
    click++;

    Text("${quran["azkar"][0]["page"]}/22",style: TextStyle(color: Colors.black,fontSize: 30),);

  }


  Map quran ={
    "azkar":[
      {
        "number":"1",

        "page":"1",

        "start1":"أَعُوذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",

        "zekr1":" آية الكرسي	﴿ٱللَّهُ لَاۤ إِلَـٰهَ إِلَّا هُوَ ٱلۡحَیُّ ٱلۡقَيُّومُۚ لَا تَأۡخُذُهُۥ سِنَةࣱ وَلَا نَوۡمࣱۚ لَّهُۥ مَا فِی ٱلسَّمَـٰوَ ٰتِ وَمَا فِی ٱلۡأَرۡضِۗ مَن "
            "ذَا ٱلَّذِی يَشۡفَعُ عِندَهُۥۤ إِلَّا بِإِذۡنِهِۦۚ يَعۡلَمُ مَا بَيۡنَ أَيۡدِيهِمۡ وَمَا خَلۡفَهُمۡۖ وَلَا يُحِيطُونَ بِشَیۡءࣲ مِّنۡ عِلۡمِهِۦۤ "
            "إِلَّا بِمَا شَاۤءَۚ وَسِعَ كُرۡسِيُّهُ ٱلسَّمَـٰوَ ٰتِ وَٱلۡأَرۡضَۖ وَلَا يَـُٔودُه"
            "ُۥ حِفۡظُهُمَاۚ وَهُوَ ٱلۡعَلِیُّ ٱلۡعَظِيمُ ﴾"

      },

      {
        "number":"3",

        "page":"2",

        "start2":"بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",

        "zekr2":" قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ."
      }




    ]
  };

 @override

  Widget build(BuildContext context ){
   double screenWidth = MediaQuery.of(context).size.width;

   return Scaffold(
     backgroundColor: Colors.white,


     appBar: AppBar(
       backgroundColor: Colors.blueGrey,

       title: Center(child: Text( "   اذكار الصباح ")),
     ),
     endDrawer: Drawer(
       backgroundColor: Colors.blueGrey,
       child: Column(
         children: [

           SizedBox(
             height: 10,
           ),

           Container(
             width: 100,
             height: 200,
             child: Center(

              child:Image(
                  image:AssetImage("assets/images/2.jpg",)
              ),

             ),
           ),

           InkWell(
             onTap: (){
             Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context){
                   return morning();

                 }
                 )
             )
             ;},

             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [


                 Container(
                   margin: EdgeInsets.only(top: 20),
                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.all(Radius.circular(5)),
                   ),
                   child: Text("اذكار الصباح",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),

                 Icon(FlutterIslamicIcons.solidPrayingPerson,color: Colors.white,size:40),
               ],
             ),

           ),


           InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context){
                     return night();

                   }));},

             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30),

                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.all(Radius.circular(5,),
                       ),
                   ),
                   child: Text("اذكار المساء",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 Icon(FlutterIslamicIcons.solidPrayingPerson,color: Colors.white,size:40),

               ],
             ),

           ),


           InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context){
                     return night();

                   }));},

             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30),

                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.all(Radius.circular(5,),
                     ),
                   ),
                   child: Text("سماع اذكار الصباح",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 Icon(Icons.headset_mic_rounded,color: Colors.white,size:40),

               ],
             ),

           ),


           InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context){
                     return night();

                   }));},

             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,

               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30),

                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.all(Radius.circular(5,),
                     ),
                   ),
                   child: Text("سماع اذكار المساء",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 Icon(Icons.headset_mic_rounded,color: Colors.white,size:40),
               ],
             ),

           ),



           InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context){
                     return night();

                   }));},

             child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30),
                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.all(Radius.circular(5,),
                     ),
                   ),
                   child: Text("اذكار النوم",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 Icon(Icons.nightlight_round_outlined,color: Colors.white,size:40),
               ],
             ),

           ),


           InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context){
                     return night();

                   }));},

             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30),

                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.all(Radius.circular(5,),
                     ),
                   ),
                   child: Text("اذكار الاستيقاظ من النوم",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 Icon(Icons.sunny,color: Colors.white,size:40),

               ],
             ),

           ),



           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               InkWell(
                 onTap: (){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context){
                         return setting();

                       }));},

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       margin: EdgeInsets.only(top: 30),
                       decoration: BoxDecoration(
                         color: Colors.blueGrey,
                         borderRadius: BorderRadius.all(Radius.circular(5,),
                         ),
                       ),
                       child: Text("الضبط",
                         style: TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                         ),
                         textAlign: TextAlign.center,
                       ),
                     ),
                     Icon(Icons.settings,color: Colors.white,size:40),

                   ],
                 ),

               ),
             ],
           ),



           InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context){
                     return night();

                   }));},

             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30),

                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.all(Radius.circular(5,),
                     ),
                   ),
                   child: Text("المسبحه الالكترونيه",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 Icon(FlutterIslamicIcons.tasbih2,color: Colors.white,size:40),
               ],
             ),

           ),




           InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context){

                     return exit();

                   }));},

             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 30),

                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                   ),
                   child: Text("الخروح",
                     style: TextStyle(
                       fontSize: 20,

                       color: Colors.white,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 Icon(Icons.exit_to_app_sharp,color: Colors.white,size:40),
               ],
             ),

           ),




         ],
       ),
     ),

     body:SafeArea(
       child: Column(
         children: [

           SizedBox(height: 30,),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

               Text("${JHijri(fDate: DateTime.now()).year}/${DateTime.now()}",
                 style: TextStyle(
                   fontSize: 20,
                   color: Colors.black
                 ),
                 textAlign: TextAlign.center,

               )

             ],
           ),


           SizedBox(height: 30,),


           Expanded(

               child: Container(
                 margin: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   border: Border.all(
                     color: Colors.black,
                     width:3
                   )
                 ),



                  child: Column(
                    children: [
                      SizedBox(height: 80,),

                      Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                       Text("${quran["azkar"][0]["page"]}/22",style: TextStyle(color: Colors.black,fontSize: 30),),


                         SimpleCircularProgressBar(
                           mergeMode: true,
                           animationDuration: 6,
                         )
                     ],
                     ),

                      SizedBox(height: 40,),

                      Text("${quran["azkar"][0]["start1"]}",style: TextStyle(color: Colors.black,fontSize: 30),),


                      Container(
                        margin: EdgeInsets.all(30),
                          child: Text("${quran["azkar"][0]["zekr1"]}",style: TextStyle(color: Colors.black,fontSize: 20),)),

                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          FloatingActionButton(
                              onPressed: (){
                                setState(() {});
                                },

                              backgroundColor: Colors.green,
                              child:Stack(
                                children: [
                                  Icon(Icons.share,size: 27),
                                  Container(
                                    width: 10,
                                    height: 10,
                                  )
                                ],
                              )
                          ),

                          FloatingActionButton(
                              onPressed: (){
                                setState(() {});
                              },

                              backgroundColor: Colors.deepOrange,
                              child:Stack(
                                children: [
                                  Icon(Icons.play_circle_outline_outlined,size: 40),
                                  Container(
                                    width: 10,
                                    height: 10,
                                  )
                                ],
                              )
                          ),


                          FloatingActionButton(
                              onPressed: (){
                                if(click<"azkar".length){
                                  click--;

                                }

                              },

                              backgroundColor: Colors.pink,
                              child:Stack(
                                children: [
                                  Icon(Icons.arrow_back_ios_rounded,size: 25),
                                  Container(
                                    width: 10,
                                    height: 10,
                                  )
                                ],
                              )
                          ),

                          FloatingActionButton(
                              onPressed: (){
                              if(click<"azkar".length){
                                click++;

                              }


                              },

                              backgroundColor: Colors.purpleAccent,
                              child:Stack(
                                children: [
                                  Icon(Icons.arrow_forward_ios_rounded,size: 25),
                                  Container(
                                    width: 10,
                                    height: 10,
                                  )
                                ],
                              )
                          ),

                        ],
                      )









                    ],
                  ),



           )
           )
           ],
       ),

     ),




   );


 }
}

