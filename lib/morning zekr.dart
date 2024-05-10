import 'package:azkar/sebha.dart';
import 'package:azkar/setting.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:azkar/night.dart';
import 'package:flutter/material.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:jhijri/jHijri.dart';


class morning extends StatefulWidget{

// const home({Key? key}) : super(key: key);
@override
State<morning> createState() => _morningState();
}


class _morningState extends State<morning> {
  // get valueNotifier => null;


  int click = 0;
  int count = 1;
  after(){
    if(count < quran.length){
      count += 1;
    }
  }
  before(){
    if(count <= quran.length && count > 1){
      count -= 1;
    }
  }



  List quran =[
    {
      "num": 5,
      "start":"أَعُوذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
      "zekr":" آية الكرسي	﴿ٱللَّهُ لَاۤ إِلَـٰهَ إِلَّا هُوَ ٱلۡحَیُّ ٱلۡقَيُّومُۚ لَا تَأۡخُذُهُۥ سِنَةࣱ وَلَا نَوۡمࣱۚ لَّهُۥ مَا فِی ٱلسَّمَـٰوَ ٰتِ وَمَا فِی ٱلۡأَرۡضِۗ مَن "
          "ذَا ٱلَّذِی يَشۡفَعُ عِندَهُۥۤ إِلَّا بِإِذۡنِهِۦۚ يَعۡلَمُ مَا بَيۡنَ أَيۡدِيهِمۡ وَمَا خَلۡفَهُمۡۖ وَلَا يُحِيطُونَ بِشَیۡءࣲ مِّنۡ عِلۡمِهِۦۤ "
          "إِلَّا بِمَا شَاۤءَۚ وَسِعَ كُرۡسِيُّهُ ٱلسَّمَـٰوَ ٰتِ وَٱلۡأَرۡضَۖ وَلَا يَـُٔودُه"
          "ُۥ حِفۡظُهُمَاۚ وَهُوَ ٱلۡعَلِیُّ ٱلۡعَظِيمُ ﴾"
    },

    {
      "num":3,
      "start":"بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",
      "zekr":" قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ."
    },

    {
      "num":8,
      "start":"بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",
      "zekr":" قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ."
    },

    {
      "num": 5,
      "start":"بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",
      "zekr":" قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. "
    },

    {
      "num": 5,
      "start":"",
      "zekr":" أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد"
          "، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه "
          "، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر "
          "، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر"
    },

    {
      "num": 5,
      "start":"",
      "zekr":"اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت "
          "، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ ."
    },

    {
      "num": 5,
      "start":"بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم",
      "zekr":" قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ."
    },
    {
      "num": 5,
      "start":"",
      "zekr":"رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً.."
    },

    {
      "num": 5,
      "start":"",
      "zekr":" اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك "
          "، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك. "
    },


    {
      "num": 5,
      "start":"",
      "zekr":"اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر."
    },

    {
      "num": 5,
      "start":"",
      "zekr":"حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم"
    },

    {
      "num": 5,
      "start":"",
      "zekr":"بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم"
    },


    {
      "num": 5,
      "start":"",
      "zekr":"اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور. "
    },

    {
      "num": 5,
      "start":"",
      "zekr":"أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، "
          "وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ. "
    },

    {
      "num": 5,
      "start":"",
      "zekr":"سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه."
    },

    {
      "num": 5,
      "start":"",
      "zekr":"اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ. "
    },

    {
      "num": 5,
      "start":"",
      "zekr":"اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ"
    },

    {
      "num": 5,
      "start":"",
      "zekr":"اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ "
          "في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني"
          " مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي. "
    },

    {
      "num": 5,
      "start":"",
      "zekr":"يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ"
    },

    {
      "num": 5,
      "start":"",
      "zekr":"أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم"
          " ، فَـتْحَهُ ، وَنَصْـرَهُ ، وَنـورَهُ وَبَـرَكَتَـهُ ، وَهُـداهُ ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَهٍ"
    },

    {
      "num": 5,
      "start":"",
      "zekr":"اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، "
          "أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ،"
          " أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِمٍ"
    },

    {
      "num": 30,
      "start":"",
      "zekr":"أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق.ٍ"
    },







  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,

        title: Center(child: Text( "اذكار الصباح")),
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      return sebha();

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
               },

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
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(MediaQuery.sizeOf(context).height*0.01,),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black,
                          width:3
                      )
                  ),



                  child: Column(
                    children: [

                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Text("${count}/${quran.length}",style: TextStyle(color: Colors.black,fontSize: 30),),
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
                                  Text("${click}",style: TextStyle(fontWeight: FontWeight.w400),),
                                  Center(
                                    child: SizedBox(
                                      height: MediaQuery.sizeOf(context).height * 0.1,
                                      width: MediaQuery.sizeOf(context).width * 0.20,
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
                            

                          ],
                        ),
                      ),

                      SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

                      Expanded(
                          child: Text("${quran[count]["start"]}",style: TextStyle(color: Colors.black,fontSize: 30),)),


                      Expanded(
                        flex: 4,
                        child: Container(
                            margin: EdgeInsets.all(MediaQuery.sizeOf(context).height*0.01),
                            child: Text("${quran[count]["zekr"]}",style: TextStyle(color: Colors.black,fontSize: 20),)),
                      ),


                      // SizedBox(height: MediaQuery.sizeOf(context).height * 0.13,),

                      Expanded(
                        flex: 2,
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            FloatingActionButton(
                              heroTag:"share",

                                onPressed:()async {
                                  //await Share.share("${quran[count]["zekr"]}");

                                },

                                backgroundColor: Colors.green,
                                child:Stack(
                                  children: [
                                    Icon(Icons.share,size: 27),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width*0.02,
                                      height: MediaQuery.sizeOf(context).height*0.01,
                                    )
                                  ],
                                )
                            ),

                            FloatingActionButton(
                                heroTag:"video",
                                onPressed: (){
                                  setState(() {});
                                },

                                backgroundColor: Colors.deepOrange,
                                child:Stack(
                                  children: [
                                    Icon(Icons.play_circle_outline_outlined,size: 40),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width*0.02,
                                      height: MediaQuery.sizeOf(context).height*0.01,
                                    )
                                  ],
                                )
                            ),


                            FloatingActionButton(
                                heroTag:"back",
                                onPressed: (){
                                  // if(page>1){
                                  //   page--;
                                  //   setState(() {
                                  //   });
                                  // }
                                before();
                                  setState(() {

                                  });
                                },
                                backgroundColor: Colors.pink,
                                child:Stack(
                                  children: [
                                    Icon(Icons.arrow_back_ios_rounded,size: 25),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width*0.02,
                                      height: MediaQuery.sizeOf(context).height*0.01,
                                    )
                                  ],
                                )
                            ),

                            FloatingActionButton(
                                heroTag:"next",
                                onPressed: (){
                                  // if(page<quran.length){
                                  //   page++;
                                  //   setState(() {
                                  //   });
                                  // }
                                  after();
                                  setState(() {

                                  });
                                },
                                backgroundColor: Colors.purpleAccent,
                                child:Stack(
                                  children: [
                                    Icon(Icons.arrow_forward_ios_rounded,size: 25),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width*0.02,
                                      height: MediaQuery.sizeOf(context).height*0.01,
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
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