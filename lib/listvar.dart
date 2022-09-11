import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



import 'Notification.dart';

import 'filter.dart';
import 'login.dart';
import 'onepage.dart';
import 'resturant.dart';


class vert extends StatefulWidget {
  const vert({Key? key}) : super(key: key);

  @override
  State<vert> createState() => _vertState();
}

class _vertState extends State<vert> {
  final List<String> listImages = [
    "IMAG/WEEK.jpg",
    "IMAG/WEEK.jpg",
    "IMAG/WEEK.jpg",
    "IMAG/WEEK.jpg",
    "IMAG/WEEK.jpg",


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,

        actions: [
        Padding(padding: EdgeInsets.only(right: 10),
    child: Container(
    height: 70,width: 150,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    Text("توصيل الى",style: TextStyle(fontSize: 15,
    fontWeight: FontWeight.normal,color: Colors.black, ),) ,
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Icon(Icons.arrow_drop_down_outlined,size: 25,color: Colors.black,),
    SizedBox(width: 5,),
    Text("بغداد ، العراق",style: TextStyle(fontSize: 15,
    fontWeight: FontWeight.bold,color: Colors.black, ),) ,
    ],
    )
    ],
    ),
    ) ,
    )
    ],
    leading: Container(
    height: 70,width: 150,
    child: Row(
    children: [
    GestureDetector(
    onTap: (){

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> noti()));
    },
    child:Icon(Icons.notifications_none,size: 23,color: Colors.black45,),
    ),
    SizedBox(width: 7,),
    GestureDetector(
    onTap: (){

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Filter()));
    },
    child:Icon(Icons.menu_outlined,size: 23,color: Colors.cyan,),
    ),

    ],
    ),
    ) ,


    elevation: 1,

    ),

    body: ListView.builder(
    itemCount: 1,
    itemBuilder:(context,index) {
    return Padding(padding: EdgeInsets.all(10),
    child:  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text(" سجل الدخول باستخدام تتطبيق توترز واستمتع بمزايا حصرية ",style: TextStyle(fontSize: 15,
    fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),),
    SizedBox(width: 5,),

    GestureDetector(
    onTap: (){

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Register()));
    },
    child: Icon(Icons.login,size: 22,color: Colors.cyan,),

    ),


    ],
    ),
    SizedBox(height: 10,),
    CarouselImages(
    scaleFactor: 0.7,
    listImages: listImages,
    height: 250.0,

    borderRadius: 30.0,
    cachedNetworkImage: true,
    verticalAlignment: Alignment.bottomCenter,
    onTap: (index) {
    print('Tapped on page $index');
    },
    ),
      SizedBox(height: 10,),
      Padding(padding: EdgeInsets.all(5),
        child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyHomePage()));

                },
                child:Typs(
               "https://cdn.pixabay.com/photo/2021/05/25/02/03/restaurant-6281067_1280.png","مطاعم"
                ),
              ),
              Typs("https://cdn2.iconfinder.com/data/icons/real-estate-1-12/50/13-512.png","متاجر"),
              Typs("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumeGkutkycF-dKJ4rTk4W-1DjZtBZ5w_XrQ&usqp=CAU","البقالة"),
            ]
        ) ,
      ),
      Padding(padding: EdgeInsets.all(10),
        child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Typs("https://play-lh.googleusercontent.com/rMUmfDEYE0-TS7rCTY3LOBi5XCpp2vU4GsykorsR2v5Slf3Zed2jh7HQHDEnswdWWw","اضف رصيد"),
              Typs("https://cdn-icons-png.flaticon.com/512/2833/2833318.png","المندوب"),
              Typs("https://cdn-icons-png.flaticon.com/512/2833/2833318.png","توترز فريش"),
              ]
        ) ,
      ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(padding: EdgeInsets.only(top: 10 , left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios,size: 15,color: Colors.green,),
                  Text("خصومات اسبوعية",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,
                ],
              ) ,
            ),
            Padding(padding: EdgeInsets.only(bottom: 10, left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("احصل على خصم 50% على مطاعم هذا الاسبوع",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black54,fontFamily:"Inconsolata"),) ,
                ],
              ) ,
            ),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.white,
        child: Expanded(child: ListView.builder(
          itemCount:3 ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(2)),
                GestureDetector(
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> rest()));
                  },
                  child:Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",30,"علي باريس","دجاج",5,30),
                ),

                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaGxgg2GBR3yNitjc_JW6WmeO7VHNJi4SvIg&usqp=CAU",39-29,"بابا كنافة","حلويات",9,35),
                SizedBox(width: 7,),
                Sale("https://i.ytimg.com/vi/v5rrIrcmfIc/maxresdefault.jpg",39-29,"ثري برذرس","سلطة",8,50),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39
                     ,"عروس لبنان","لحم",6,40),
                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSB_PVOD8q15JgwsbQ8yHVmYve2DEIiu3VCkrE4SjV8Hl-kvpzUb4K-1f0jZ3Xc6-884&usqp=CAU",39-29,"بديز بركر","بركر",4,10),
                SizedBox(width: 7,),
                Sale("https://www.urtrips.com/wp-content/uploads/2021/11/Pasha-Turkish-Restaurant-Abu-Dhabi-5.jpg",39-29,"مستتر شاورما","لحم",8,25),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39-29,"قصرالكرم","لحوم",10,20),
              ],
            );
          },
        ),
        ),
      ),

      Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.white,
        child: Expanded(child: ListView.builder(
          itemCount:3 ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(2)),
            Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",30,"علي باريس","دجاج",5,30),


            SizedBox(width: 7,),
            Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaGxgg2GBR3yNitjc_JW6WmeO7VHNJi4SvIg&usqp=CAU",39-29,"بابا كنافة","حلويات",9,35),
            SizedBox(width: 7,),
            Sale("https://i.ytimg.com/vi/v5rrIrcmfIc/maxresdefault.jpg",39-29,"ثري برذرس","سلطة",8,50),
            SizedBox(width: 7,),
            Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39
            ,"عروس لبنان","لحم",6,40),
            SizedBox(width: 7,),
            Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSB_PVOD8q15JgwsbQ8yHVmYve2DEIiu3VCkrE4SjV8Hl-kvpzUb4K-1f0jZ3Xc6-884&usqp=CAU",39-29,"بديز بركر","بركر",4,10),
            SizedBox(width: 7,),
            Sale("https://www.urtrips.com/wp-content/uploads/2021/11/Pasha-Turkish-Restaurant-Abu-Dhabi-5.jpg",39-29,"مستتر شاورما","لحم",8,25),
            SizedBox(width: 7,),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39-29,"قصرالكرم","لحوم",10,20),

              ],
            );
          },
        ),
        ),
      ),

      Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.white,
        child: Expanded(child: ListView.builder(
          itemCount:3 ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(padding: EdgeInsets.all(2)),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",30,"علي باريس","دجاج",5,30),


                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaGxgg2GBR3yNitjc_JW6WmeO7VHNJi4SvIg&usqp=CAU",39-29,"بابا كنافة","حلويات",9,35),
                SizedBox(width: 7,),
                Sale("https://i.ytimg.com/vi/v5rrIrcmfIc/maxresdefault.jpg",39-29,"ثري برذرس","سلطة",8,50),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39
                    ,"عروس لبنان","لحم",6,40),
                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSB_PVOD8q15JgwsbQ8yHVmYve2DEIiu3VCkrE4SjV8Hl-kvpzUb4K-1f0jZ3Xc6-884&usqp=CAU",39-29,"بديز بركر","بركر",4,10),
                SizedBox(width: 7,),
                Sale("https://www.urtrips.com/wp-content/uploads/2021/11/Pasha-Turkish-Restaurant-Abu-Dhabi-5.jpg",39-29,"مستتركوشري ","لحم",8,25),
                SizedBox(width: 7,),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39-29," سوبر صوص","لحوم",10,20),


              ],
            );
          },
        ),
        ),
      ),

      Container(
        width: MediaQuery.of(context)


          .size.width,
        height: 300,
        color: Colors.white,
        child: Expanded(child: ListView.builder(
          itemCount:3 ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

              ],
            );
          },
        ),
        ),
      ),

      Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.white,
        child: Expanded(child: ListView.builder(
          itemCount:3 ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(2)),
                Padding(padding: EdgeInsets.all(2)),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",30,"علي باريس","دجاج",5,30),


                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaGxgg2GBR3yNitjc_JW6WmeO7VHNJi4SvIg&usqp=CAU",39-29,"بابا كنافة","حلويات",9,35),
                SizedBox(width: 7,),
                Sale("https://i.ytimg.com/vi/v5rrIrcmfIc/maxresdefault.jpg",39-29,"ثري برذرس","سلطة",8,50),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39
                    ,"عروس لبنان","لحم",6,40),
                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSB_PVOD8q15JgwsbQ8yHVmYve2DEIiu3VCkrE4SjV8Hl-kvpzUb4K-1f0jZ3Xc6-884&usqp=CAU",39-29,"بديز بركر","بركر",4,10),
                SizedBox(width: 7,),
                Sale("https://www.urtrips.com/wp-content/uploads/2021/11/Pasha-Turkish-Restaurant-Abu-Dhabi-5.jpg",39-29,"مستتر شاورما","لحم",8,25),
                SizedBox(width: 7,),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39-29,"قصرالكرم","لحوم",10,20),

              ],
            );
          },
        ),
        ),
      ),

      Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.white,
        child: Expanded(child: ListView.builder(
          itemCount:3 ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(padding: EdgeInsets.all(2)),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",30,"علي باريس","دجاج",5,30),


                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaGxgg2GBR3yNitjc_JW6WmeO7VHNJi4SvIg&usqp=CAU",39-29,"بابا كنافة","حلويات",9,35),
                SizedBox(width: 7,),
                Sale("https://i.ytimg.com/vi/v5rrIrcmfIc/maxresdefault.jpg",39-29,"ثري برذرس","سلطة",8,50),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39
                    ,"عروس لبنان","لحم",6,40),
                SizedBox(width: 7,),
                Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSB_PVOD8q15JgwsbQ8yHVmYve2DEIiu3VCkrE4SjV8Hl-kvpzUb4K-1f0jZ3Xc6-884&usqp=CAU",39-29,"بديز بركر","بركر",4,10),
                SizedBox(width: 7,),
                Sale("https://www.urtrips.com/wp-content/uploads/2021/11/Pasha-Turkish-Restaurant-Abu-Dhabi-5.jpg",39-29,"مستتر شاورما","لحم",8,25),
                SizedBox(width: 7,),
                SizedBox(width: 7,),
                Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39-29,"قصرالكرم","لحوم",10,20),

              ],
            );
          },
        ),
        ),
      ),

      Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.white,
        child: Expanded(child: ListView.builder(
          itemCount:3 ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 2,bottom: 2)),
                typs("IMAG/eat.jpg","ايطالي"),
                typs("IMAG/bag.jpg","التتجزئة"),
                typs("IMAG/pizaa.jpg","بيتزا"),
                typs("IMAG/ice.jpg","مثلجات"),
                typs("IMAG/food.jpg","المتجر"),
                typs("IMAG/delee.jpg","تجهيزاتت"),
                typs("IMAG/sandoeh.jpg","تركي"),
                typs("IMAG/head.jpg","تقنيات"),
                typs("IMAG/eat.jpg","شرقي"),
                typs("IMAG/eat.jpg","عصاىر"),
                typs("IMAG/food.jpg","عربي"),

                typs("IMAG/foodlove.jpg","فطور"),
                typs("IMAG/food.jpg","فاست فود"),

                typs("IMAG/flower.jpg","ازهار "),

                typs("IMAG/salat.jpg","صحي"),
                typs("IMAG/barbqe.jpg","برغر"),
              ],
            );
          },
        ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("قريب",style: TextStyle(fontSize: 35,
              fontWeight: FontWeight.w400,color: Colors.black,fontFamily:"Inconsolata"),) ,
        ],
      ),
      SizedBox(height: 10,),Padding(padding: EdgeInsets.all(2)),
      Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",30,"علي باريس","دجاج",5,30),


      SizedBox(width: 7,),
      Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaGxgg2GBR3yNitjc_JW6WmeO7VHNJi4SvIg&usqp=CAU",39-29,"بابا كنافة","حلويات",9,35),
      SizedBox(width: 7,),
      Sale("https://i.ytimg.com/vi/v5rrIrcmfIc/maxresdefault.jpg",39-29,"ثري برذرس","سلطة",8,50),
      SizedBox(width: 7,),
      Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39
          ,"عروس لبنان","لحم",6,40),
      SizedBox(width: 7,),
      Sale("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSB_PVOD8q15JgwsbQ8yHVmYve2DEIiu3VCkrE4SjV8Hl-kvpzUb4K-1f0jZ3Xc6-884&usqp=CAU",39-29,"بديز بركر","بركر",4,10),
      SizedBox(width: 7,),
      Sale("https://www.urtrips.com/wp-content/uploads/2021/11/Pasha-Turkish-Restaurant-Abu-Dhabi-5.jpg",39-29,"مستتر شاورما","لحم",8,25),
      SizedBox(width: 7,),
      SizedBox(width: 7,),
      Sale("https://media.safarway.com/content/f5b86ef0-fe3f-4b76-bf27-6249466cbe6c_xs.jpg",39-29,"قصرالكرم","لحوم",10,20),

    ],
    ),
    );


    }
    ),



    );
  }
  Container Typs(String Icon,String type){
    return Container(
      height: 80,width:100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 10,
              offset: Offset(0,4),color: Colors.grey
          )]),
      child: Column(
        children: [
          Image.network(Icon,height: 50,width: 50,) ,

          SizedBox(height: 5,),
          Text(type,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),),
        ],
      ),
    );
  }

  Padding Sale(String image ,int time ,String title,String food,int rate ,int decont){
    return Padding(padding: EdgeInsets.all(10),
      child: Container(
        height: 280,width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(padding: EdgeInsets.only(left: 0),
              child: Container(
                height: 180,
                width: 355,
                child:
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(

                        child:  Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(image: DecorationImage(
                            image:NetworkImage(image),fit: BoxFit.cover,),
                              borderRadius: BorderRadius.circular(15)),
                        )),
                    Positioned(
                      top: 20,
                      left: 10,

                      child:  Icon(Icons.favorite_border,size: 30,color: Colors.white,),),
                    Positioned(
                        top: 150,
                        left: 30,
                        child: Container(
                            height: 45,width: 75,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 1,color: Colors.grey.withOpacity(0.3),offset: Offset(0,2)
                            )]),
                            child:Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("$time",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3,),
                                  Text("دقائق",style: TextStyle(fontFamily: "Inconsolata",fontSize: 13,fontWeight: FontWeight.normal,color: Colors.grey),),
                                ],
                              ),
                            )

                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(title,style: TextStyle(fontFamily: "Inconsolata",fontSize: 20,fontWeight: FontWeight.w400),),
            Text("$food  . \$\$",style: TextStyle(fontFamily: "Inconsolata",fontSize: 13,fontWeight: FontWeight.normal),),
            Padding(padding: EdgeInsets.all(10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 20,width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blueAccent.withOpacity(0.1)),
                      child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,


                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("اكسب نقاط",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue.shade500,),),
                              Icon(Icons.add_box_outlined,size: 15,color: Colors.blue.shade500,),
                            ],
                          )
                      )

                  ),
                  SizedBox(width: 5,),
                  Container(
                      height: 20,width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.orange.withOpacity(0.1)),
                      child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(" خصم$decont%",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400,color: Colors.orange.shade900,),),
                              Icon(Icons.bookmark_border,size: 15,color: Colors.orange.shade900,),
                            ],
                          )
                      )

                  ),
                  SizedBox(width: 5,),
                  Container(
                      height: 20,width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey.withOpacity(0.2)),
                      child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("$rate",style: TextStyle(fontFamily: "Inconsolata",fontSize: 15,fontWeight: FontWeight.w400),),
                              Icon(Icons.star,size: 15,color: Colors.cyan,),
                            ],
                          )
                      )

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Container typs(String image , String name){
    return Container(
      child: Column(
        children: [
          Image.network(image,height: 70,width: 70,),
          SizedBox(height: 0,),
          Text(name,style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        ],
      ),
    );
  }
}
