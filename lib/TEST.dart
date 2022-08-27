import 'package:flutter/material.dart';
import 'BURGER.dart';

class page2 extends StatefulWidget {
  const  page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page1State();
}

class _page1State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          actions: [
            Padding(padding: EdgeInsets.only(right: 10),

              child:
              Row(
                children: [
                  Icon(Icons.arrow_drop_down, color: Colors.black,),

                  Text(" بغداد\nتوصيل الئ", textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.black87),)


                ],

              ),
            )


          ],
          leading: Icon(Icons.tune, color: Colors.green,),


        ),
        
        body: Center(
          
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(4)),
                              Types("IMAG/WEEK.jpg"),
                              SizedBox(width: 3,),
                              Types("IMAG/WEEK.jpg"),
                              SizedBox(width: 3,),
                              Types("IMAG/WEEK.jpg")


                            ],
                          )
                        ],

                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all( 20),

                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [


Padding(padding: EdgeInsets.only(left:30 )),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular( 20)),
                              color: Colors.white,
                              boxShadow:[BoxShadow(color:Colors.grey.shade200,
                                spreadRadius: 5,

                              ) ]
                            ),
                            child:
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: (){

                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyHomePage()));

                                      },
                                      child:Image.asset( "IMAG/fruot.jpeg")
                                    ),
                                    Padding(padding:EdgeInsets.all( 15)  ),
                                    Container(
                                      height: 25,

                                      width:30 ,
                                      child:
                                      Image.asset( "IMAG/fruot.jpeg")
                                    ),
                                    SizedBox(height: 8,),
                                    Text( "البقاله")
                                  ],
                                   )




                          ),
                          SizedBox(width: 40,),
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular( 20)),
                                  color: Colors.white,
                                  boxShadow:[BoxShadow(color:Colors.grey.shade200,
                                    spreadRadius: 5,

                                  ) ]
                              ),
                              child:
                              Column(
                                children: [
                                  Padding(padding:EdgeInsets.all( 15)  ),
                                  Container(
                                    height: 25,
                                      width: 30,

                                      child:
                                      Image.asset( "IMAG/toto.jpg")
                                  ),
                                  SizedBox(height: 8,),
                                  Text( " توترز فريش")
                                ],
                              )




                          ),
                          SizedBox(width: 40,),
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular( 20)),
                                  color: Colors.white,
                                  boxShadow:[BoxShadow(color:Colors.grey.shade200,
                                    spreadRadius: 5,

                                  ) ]
                              ),
                              child:
                              Column(
                                children: [
                                  Padding(padding:EdgeInsets.all( 15)  ),
                                  Container(
                                    height: 25,
                                      width:30 ,

                                      child:
                                      Image.asset( "IMAG/rest.jpg")
                                  ),
                                  SizedBox(height: 8,),
                                  Text( " مطاعم")
                                ],
                              )




                          ),
                        ],
                      ),



                      ),

                    Container(
                      padding: EdgeInsets.all( 15),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [
                          Padding(padding: EdgeInsets.only(left:30 )),



                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular( 20)),
                                  color: Colors.white,
                                  boxShadow:[BoxShadow(color:Colors.grey.shade200,
                                    spreadRadius: 5,

                                  ) ]
                              ),
                              child:
                              Column(
                                children: [
                                  Padding(padding:EdgeInsets.all( 15)  ),
                                  Container(
                                     height:25 ,
                                      width: 30,

                                      child:
                                      Image.asset("IMAG/download (5).jpg")
                                  ),
                                  SizedBox(height: 8,),
                                  Text( " اضف رصيد")
                                ],
                              )




                          ),
                          SizedBox(width: 40,),
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular( 20)),
                                  color: Colors.white,
                                  boxShadow:[BoxShadow(color:Colors.grey.shade200,
                                    spreadRadius: 5,

                                  ) ]
                              ),
                              child:
                              Column(
                                children: [
                                  Padding(padding:EdgeInsets.all( 15)  ),
                                  Container(
                                    height: 25,
                                      width: 30,

                                      child:
                                      Image.asset( "IMAG/home2")
                                  ),
                                  SizedBox(height: 8,),
                                  Text( "متاجر")
                                ],
                              )




                          ),
                          SizedBox(width: 40,),
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular( 20)),
                                  color: Colors.white,
                                  boxShadow:[BoxShadow(color:Colors.grey.shade200,
                                    spreadRadius: 5,

                                  ) ]
                              ),
                              child:
                              Column(
                                children: [
                                  Padding(padding:EdgeInsets.all( 15)  ),
                                  Container(
height: 25,
                                      width: 30,
                                      child:
                                      Image.asset( "IMAG/download.jpg",)
                                  ),
                                  SizedBox(height: 8,),
                                  Text( "االمندوب")
                                ],
                              )




                          ),
                        ],
                      ),



                    ),
                    Container(
                      height: 10,
                      width: 2000,
                      color: Colors.grey.shade300,

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                            
                          Icon(Icons.arrow_back_ios,color: Colors.green,size: 25,),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          Text( "خصومات اسبوعيه",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),


                        ],
                        
                      ),

                    ),
                    Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text("احصل علاخصم50%علئ مطاعم هدا الاسبوع",style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.normal,color: Colors.grey
                          ),)
                        ],
                      )

                    ),
                    SizedBox(height: 40,),
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white60
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Container(
                            child: Row(
                              children: [

                                Column( children: [
                                  Padding(padding: EdgeInsets.only(left: 50)),
                                  Icon(Icons.person,size: 20,color: Colors.black87,),
                                  Text("الحساب")
                                ],

                                )

                              ],
                            ),
                          ),
                          SizedBox(width:70,),
                          Container(
                            child: Row(
                              children: [
                                Column( children: [Icon(Icons.menu,size: 20,color: Colors.black87,),
                                  Text("طلبات")
                                ],

                                )

                              ],
                            ),
                          ),
                          SizedBox(width: 70,),
                          Container(
                            child: Row(
                              children: [
                                Column( children: [Icon(Icons.face,size: 20,color: Colors.black87,),

                                  Text(" المندوب")
                                ],

                                )

                              ],
                            ),
                          ),
                          SizedBox(width: 70,),
                          Container(
                            child: Row(
                              children: [
                                Column( children: [Icon(Icons.search,size: 20,color: Colors.black87,),
                                  Text("بحث")
                                ],

                                )

                              ],
                            ),
                          ),
                          SizedBox(width: 70,),
                          Container(

                            child: Row(

                              children: [
                                Column(
                                  children:
                                  [Padding(padding: EdgeInsets.only(right: 50)),
                                    Icon(Icons.home_filled,size: 20,color: Colors.black87,),
                                  Text("رئيسيه")
                                ],

                                )

                              ],
                            ),
                          ),

                        ],
                      ),
                    )



                  ],
                )
              ],
            )
        )

    );
  }

    Column Types(String photo) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Container(
            margin:EdgeInsets.all(10) ,
            height: 150, width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(photo)
            )),
          ),


        ],
      );
    }
  }

