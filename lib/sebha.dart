
import 'package:azkar/morning%20zekr.dart';
import 'package:azkar/night.dart';
import 'package:azkar/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter/material.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:jhijri/jHijri.dart';

class sebha extends StatefulWidget{
// const home({Key? key}) : super(key: key);
  @override
  State<sebha> createState() => _sebhaState();
  TextEditingController number = TextEditingController();

  int click = 0;
  String numstring = "";
  int num = 100;
  // Future openDialog(){
  //   return showDialog(
  //       context: ,
  //       builder: (context){
  //         return AlertDialog(
  //           content: TextFormField(
  //             textAlign: TextAlign.center,
  //             keyboardType: TextInputType.number,
  //             controller: number,
  //             decoration: InputDecoration(
  //               hintText: "ادخل عدد مرات العد",
  //               hintStyle: TextStyle(),
  //               fillColor: Colors.white,
  //               filled: true,
  //               border: UnderlineInputBorder(
  //                   borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).width * 0.01)
  //               ),
  //             ),
  //           ),
  //           actions: [
  //             Center(
  //               child: SizedBox(
  //                 width: MediaQuery.sizeOf(context).width * 0.25,
  //                 child: TextButton(
  //                     style: ButtonStyle(
  //                       backgroundColor: MaterialStateProperty.all(Color(0XFF087e8b)),
  //                       foregroundColor: MaterialStateProperty.all(Colors.white),
  //                       shape: MaterialStateProperty.all(
  //                         RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).width * 0.01),
  //                         ),
  //                       ),
  //                     ),
  //                     onPressed: () {
  //                       numstring = number.text.trim();
  //                       num = int.parse(numstring);
  //                       Navigator.pop(context);
  //                     },
  //                     child: Center(child: Text("موافق",style: TextStyle(fontWeight: FontWeight.bold),))
  //                 ),
  //               ),
  //             ),
  //           ],
  //         );
  //       }
  //   );
  // }






}
class _sebhaState extends State<sebha> {
  exit(){
    exit();
  }




  int click=0;
  int page = 1;

  int count = 0;
  List quran =[
    {
      "num": 100,
      "zekr":"سبحان اللة"
    },

    {
      "num":100,

      "zekr":"الحمدلله"
    },

    {
      "num":100,

      "zekr":"لا اله الا الله  "
    },

    {
      "num": 100,

      "zekr":"الله اكبر َّ"
    },

    {
      "num":100,

      "zekr":"لا حول ولا قوه الا بالله  َّ"
    },

    {
      "num":100,

      "zekr":"استغفر الله العظيم"
    },


  ];

  @override
  Widget build(BuildContext context ) {



    

    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.blueGrey,

        title: Center(child: Text( "  المسبحه الالكترونيه ")),
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
                      return morning();

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

            SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [

                Text("${JHijri(fDate: DateTime.now()).year}/${JHijri(fDate: DateTime.now()).month}/${JHijri(fDate: DateTime.now()).day}",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.center,

                ),
                Text( JHijri.now().dayName ,style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                  textAlign: TextAlign.center,

                ),

                Text("${ DateTime.now().year}/${ DateTime.now().month}/${ DateTime.now().day}",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.center,

                ),

              ],
            ),


            SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),


            Expanded(

                child: Container(
                  margin: EdgeInsets.all(MediaQuery.sizeOf(context).height*0.01),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black,
                          width:3
                      )
                  ),



                  child: Column(
                    children: [

                      SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),



                      InkWell(
                        onTap: (){
                          setState(() {
                            if(click < quran[count]["num"]){
                              click++;
                            }
                            else{
                              click = 0;
                            }
                          });
                        },
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Text("${click}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50),),
                            Center(
                              child: SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.30,
                                width: MediaQuery.sizeOf(context).width * 0.60,
                                child: CircularProgressIndicator(
                                  value: click/quran[count]["num"],
                                  backgroundColor: Colors.grey,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     InkWell(
                      //       onTap: (){
                      //         setState(() {
                      //         });
                      //       },
                      //       child: Container(
                      //         height: MediaQuery.sizeOf(context).height * 0.05,
                      //         width: MediaQuery.sizeOf(context).width * 0.38,
                      //         decoration: BoxDecoration(
                      //             color: Color(0XFF087e8b),
                      //             borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).width * 0.02)
                      //         ),
                      //         child: Center(child: Text("العدد",style: TextStyle(color: Colors.white,fontSize: MediaQuery.sizeOf(context).width * 0.06),)),
                      //       ),
                      //     ),
                      //     SizedBox(width: MediaQuery.sizeOf(context).width * 0.07,),
                      //     InkWell(
                      //       onTap: (){
                      //         setState(() {
                      //           // Navigator.push(
                      //           //     context,
                      //           //     MaterialPageRoute(builder: (context){
                      //           //       return totalElzekr(click);
                      //           //     })
                      //           // );
                      //         });
                      //       },
                      //       child: Container(
                      //         height: MediaQuery.sizeOf(context).height * 0.05,
                      //         width: MediaQuery.sizeOf(context).width * 0.38,
                      //         decoration: BoxDecoration(
                      //             color: Color(0XFF087e8b),
                      //             borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).width * 0.02)
                      //         ),
                      //         child: Center(child: Text("اجمالى الذكر",style: TextStyle(color: Colors.white,fontSize: MediaQuery.sizeOf(context).width * 0.06),)),
                      //       ),
                      //     ),
                      //   ],
                      // ),






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