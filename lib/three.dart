import 'package:flutter/material.dart';
class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child:Container(
                height:150 ,
                width: MediaQuery.of( context).size.width,
                decoration: BoxDecoration(
             image: DecorationImage(image:NetworkImage("https://yalalla.com/wp-content/uploads/sites/2/2016/06/ultimate-veggie-burger-840x560.jpg"),
                 fit:BoxFit.cover),



                ),
                child:
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 20,
                        left: 320,
                        width: 46,
                        height: 44,
                        child: Container(
                          decoration:BoxDecoration(
                            color: Colors.white,borderRadius: BorderRadius.circular(15),


                          ),
                          child:Icon(Icons.arrow_back,color: Colors.black87,),

                        ) ),
                    Positioned( top: 130,
                      left:0 ,

                      child: Container(
                        height:MediaQuery.of( context).size.height,
                        width: MediaQuery.of( context).size.width ,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),color: Colors.white,
                          ),
                          child:
                              Padding(padding:  EdgeInsets.all( 10),
                                child: Column(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,

                                  children: [
                                    Padding(padding: EdgeInsets.all( 15)),
                                    Text("برجرات",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red) ,),
                                    SizedBox(height: 30,),
                                    Row(
mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(padding:EdgeInsets.all(20)), SizedBox(width: 4,),
                                        Text( "   جيد جدا",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black87) ,),

                                        Icon(Icons.face_retouching_natural,size:20 ,color: Colors.black54,),
                                        SizedBox(width: 4,),
                                        Text( "  سعر التوصيل:1,500",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black87) ,),
                                        SizedBox(width: 4,),
                                        Icon(Icons.car_repair_sharp,color: Colors.black87,size: 20,),







                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,

                                      children: [

                                        Text( "  الحد الادنئ للطلب 5000 د.ع",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black87) ,),

                                        Text( "  المنصور",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black87) ,),
                                        Icon(Icons.location_on_outlined,size:20 ,color: Colors.black87,),



                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [


                                        Text( " وقت التوصيل المتوقع من نصف ساعه الئ ساعه ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black87) ,),
                                        SizedBox(width:  5,),
                                        Icon(Icons.timer_outlined,size:20 ,color: Colors.black87,),


                                      ],

                                    ),
                                    SizedBox(height: 25,),
                                    Text( " سندويجات فيليه  الدجاج",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red) ,),
                                    SizedBox(height: 20,),
                                    Container(
                                      height: 100,
                                      width: MediaQuery.of( context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular( 40),
                                        color: Colors.grey.withOpacity( 0.3),

                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Padding(padding: EdgeInsets.only(right: 20,top: 15),
                                            child: Text( " اضافات",style:TextStyle(fontSize: 24,fontWeight: FontWeight.normal,color: Colors.red) ,),


                                          ),


                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                               Icon(Icons.arrow_upward,size:35 ,color: Colors.black87,),
                                              SizedBox(width: 200,),



                                              Text( "  اختياري ",style:TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.grey) ,),



                                            ],
                                          ),







                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 17,),
                                    Column(
                                      children: [
                                        Text( "  تعليمات  خاصه",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black87) ,),


                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 50,
                                      width: MediaQuery.of( context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular( 20),
                                        color: Colors.grey.withOpacity( 0.3),

                                      ),

                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(padding:  EdgeInsets.all(10)),
                                          Text( " ادا كانت لديك ملاحضه تكتب هنا ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black54) ,),


                                        ],
                                      )


                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:CrossAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          backgroundColor: Colors.grey,

                                          child: Icon(Icons.add,size: 15,color: Colors.black,),
                                          onPressed:  incrementCount,
                                        ),
                                        Text("${count}"),
                                        FloatingActionButton(
                                          backgroundColor: Colors.grey,
                                          child:   Icon(Icons.remove,size: 15,color: Colors.black,),
                                          onPressed: decrementCount ,
                                        ),

                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                     Column(crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Text( " 5500 د.ع",style:TextStyle(fontSize: 25,fontWeight: FontWeight.normal,color: Colors.red) ,),


                                       ],
                                     ),
                                    Container(
                                        margin: EdgeInsets.all(30),
                                        height: 50,
                                        width: MediaQuery.of( context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular( 20),
                                          color: Colors.red,

                                        ),

                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [

                                            Text( " اضافه الئ السله ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white) ,),


                                          ],
                                        )


                                    ),


                                  ],



                                ),
                              )

                        ),

                      ),

                    )
                  ],
                )
              )
            )
          ],
        ),

      ),
    );
  }
  void   incrementCount() {
    setState(() {
      count++;
    });
  }
  void  decrementCount(){
    setState(() {
      count--;


    });
  }
}
