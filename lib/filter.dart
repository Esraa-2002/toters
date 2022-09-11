
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'listvar.dart';


class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [

          GestureDetector(
              onTap: (){

                Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> vert()));
              },
              child:
              Padding(padding: EdgeInsets.all(10),
                child:Icon(Icons.arrow_forward_ios_outlined,size: 30,color: Colors.black,),
              )
          ),


        ],
        title:Text("الفلتر",style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        elevation: 0,
      ),
      body: Padding(padding: EdgeInsets.all(10),
        child:ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("ترتيب حسب",style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  color: Colors.white,
                  child: Expanded(child: ListView.builder(
                    itemCount:1 ,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SortBy("IMAG/alEUEmqqaa.png","تتقييم"),
                          SortBy("IMAG/time.png","وقت التوصيل"),
                          SortBy("IMAG/download.png","شائع"),
                          SortBy("IMAG/face.png","موصى به"),
                        ],
                      );
                    },
                  ),
                  ),
                ),
                Container(
                  height: 0.5,width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("مسح",style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.normal,color: Colors.cyan,fontFamily:"Inconsolata"),) ,
                    Text("تصنيفات سريعة",style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,
                  ],
                ),
                SizedBox(height: 5,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(5),
                        child:Container(
                          height: 30,width: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(0.3)),
                          child:Center(
                            child: Text("عروض",style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                          ),

                        ),
                      ),
                      Padding


                        (padding: EdgeInsets.all(5),
                        child:Container(
                          height: 30,width: 90,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(0.3),),
                          child:Center(
                            child: Text("توصيل مجاني",style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                          ),

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5),
                        child:Container(
                          height: 30,width: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(0.3),),
                          child:Center(
                            child: Text("جديد",style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                          ),

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5),
                        child:Container(
                          height: 30,width: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(0.3),),
                          child:Center(
                            child: Text("توفير",style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                          ),

                        ),
                      ),
                    ],
                  ) ,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(5),
                        child:Container(
                          height: 30,width: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(0.3),),
                          child:Center(
                            child: Text("راقي",style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                          ),

                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5),
                        child:Container(
                          height: 30,width: 90,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(0.3),),
                          child:Center(
                            child: Text("متوسط المدى",style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                          ),

                        ),
                      ),
                    ],
                  ) ,
                ),
                SizedBox(height: 15,),
                Container(
                  height: 0.5,width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.3),
                ),
                Padding(padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("الانواع",style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,
                    ],

                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    typs("IMAG/pizaa.jpg","ايطالي"),
                    typs("IMAG/bag.jpg","التتجزئة"),
                    typs("IMAG/barbqe.jpg","برغر"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    typs("IMAG/pizaa.jpg","بيتزا"),
                    typs("IMAG/ice.jpg","بوظه"),
                    typs("IMAG/food.jpg","بقالة"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    typs("IMAG/delver.jpg","تجهيزات"),
                    typs("IMAG/delver.jpg","تركي"),
                    typs("IMAG/head.jpg","تقنيات"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    typs("IMAG/flower.jpg","زهور"),
                    typs("IMAG/sandoeh.jpg","دجاج"),
                    typs("IMAG/eat.jpg","حلويات"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    typs("IMAG/barbqe.jpg","ستيك"),
                    typs("IMAG/salat.jpg","سلطات"),
                    typs("IMAG/sandoeh.jpg","سوري"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    typs("IMAG/barbqe.jpg","ستيك"),
                    typs("IMAG/salat.jpg","سلطات"),
                    typs("IMAG/sandoeh.jpg","سوري"),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    typs("IMAG/barbqe.jpg","ستيك"),
                    typs("IMAG/salat.jpg","سلطات"),
                    typs("IMAG/sandoeh.jpg","سوري"),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    typs("IMAG/pizaa.jpg","بيتزا"),
                    typs("IMAG/ice.jpg","بوظه"),
                    typs("IMAG/food.jpg","بقالة"),

                  ],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.all(5),
                  child:GestureDetector(
                      onTap: (){

                        Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> vert()));
                      },
                      child:
                      Padding(padding: EdgeInsets.all(10),
                        child: Container(
                          height: 40,width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.cyan.withOpacity(0.9999),),
                          child:Center(
                            child: Text("تتصفية النتائج",style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.normal,color: Colors.white,fontFamily:"Inconsolata"),)  ,
                          ),

                        ),
                      )
                  ),
                ),

              ],
            );
          },
        ) ,
      ),

    );
  }
  Container SortBy(String icons , String typeName){
    return Container(
      height:90,width: 90,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
          height: 50,width: 50,
          decoration:


          BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.3),),
    child: Image.asset(icons,),
    ),
    SizedBox(height: 5,),
    Text(typeName,style: TextStyle(fontSize: 15,
    fontWeight: FontWeight.bold,color: Colors.black38,fontFamily:"Inconsolata"),) ,

    ],
    ),
    );
    }
  Container typs(String image , String name){
    return Container(
      child: Column(
        children: [
          Image.asset(image,height: 100,width: 100,),
          SizedBox(height: 0,),
          Text(name,style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.normal,color: Colors.black,fontFamily:"Inconsolata"),) ,

        ],
      ),
    );
  }
}

