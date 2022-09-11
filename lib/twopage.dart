
import 'package:flutter/material.dart';
class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  String stor ='';
  bool checkvalue =true;
  bool checkvalue2 =true;
  int number=0;
  TextEditingController word = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of( context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://shamlola.s3.amazonaws.com/Shamlola_Images/7/src/7d63e3088cd4f45c20dac8671bb3eea1d98a22c5.jpg"),
                    fit:BoxFit.cover
                  )

                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                

                children: [
                  Padding(padding: EdgeInsets.only(left:10)),
                  Text( "Chicken Madfounn plasster",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  Padding(padding: EdgeInsets.all(10)),
                  Text( "tium, t beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.grey),),
                  SizedBox(height: 10,),
                  Padding(padding: EdgeInsets.only(left:  10)),
                  Text( "IDQ 13.000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.green),),

                ],
                ),

              ),
              SizedBox(height: 15,),
              Container(
                height:5 ,
                width: MediaQuery.of( context).size.width,
                color: Colors.grey,

              ),
              RadioListTile(title: Text("BURGER"),
                  value: "this food", groupValue:stor , onChanged:  (val){

                  setState(() {
                    stor="$val";

                  });

                  }
              ),
              RadioListTile(title: Text("HALF BURGER "),
                  value: "this eate", groupValue:stor , onChanged:  (val){

                    setState(() {
                      stor="$val";

                    });

                  }
              ),
              RadioListTile(title: Text("Half chicken"),
                  value: "thischicken", groupValue:stor , onChanged:  (val){

                    setState(() {
                      stor="$val";

                    });

                  }
              ),
              Container(
                height:5 ,
                width: MediaQuery.of( context).size.width,
                color: Colors.grey,

              ),

              CheckboxListTile(title: Text("good"),
                  value:checkvalue  , onChanged:(vale)
                  {
                    setState(() {
                      checkvalue=vale!;


                    });
                  }
                   ),


              CheckboxListTile(title: Text("SPACY"),
                  value:checkvalue2   , onChanged:(vale)
                  {
                    setState(() {

                      checkvalue2=vale!;



                    });
                  }
              ),
             SizedBox(height: 20,),
              Container(
                height:5 ,
                width: MediaQuery.of( context).size.width,
                color: Colors.grey,

              ),
              SizedBox(height: 20,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
               GestureDetector(
                 onTap: (){
                   setState(() {
                     number+1;

                   });
                 },
                 child: Icon(Icons.add),
               ),
               Text("$number"),
               GestureDetector(
                 onTap: (){
                   setState(() {
                     number-=1;

                   });
                 },
                 child: Icon(Icons.minimize),
               ),
               Text("$number"),


             ],),
              Container(
                margin: EdgeInsets.all(30),
                height: 100,
                width: MediaQuery.of( context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black26,width: 2,),
                ),
                padding: EdgeInsets.only(left: 30,top: 20),child:  Text("اكتب ملاحضتك هنا",style: TextStyle(fontSize: 20,color: Colors.grey.withOpacity( 0.4)),),

              )





            ],
          )
        ],
      ),
      
    );
  }
}
