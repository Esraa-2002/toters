
import 'package:flutter/material.dart';

class delv extends StatefulWidget {
  const delv({Key? key}) : super(key: key);

  @override
  State<delv> createState() => _delvState();
}

class _delvState extends State<delv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.cyan,


          title:  Padding(padding: EdgeInsets.only(left: 200),child:  Text("نوصل اي شي يسع على متن دراجة نارية",style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.white,fontFamily:"Inconsolata"),) ,
               ),

          elevation:3,

        ),
        body: Padding(padding: EdgeInsets.only(top: 30,left: 15,right: 15),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context,index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(":اطلب مندوب ل ",style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily:"Inconsolata"),) ,


                  SizedBox(height: 15,),
                  Container(
                    height: 100,width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.2)
                    ),
                    child:
                    Padding(padding: EdgeInsets.only(left: 20,right: 10),
                      child:Row(
                        children: [
                          Icon(Icons.arrow_back_ios,size: 15,color: Colors.cyan,),
                          SizedBox(width: 15,),
                          Image.asset("IMAG/delee.jpg",height: 90,),
                          SizedBox(width: 130,),
                          Container(
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [


                                Text("توصيل احتياجاتك",style: TextStyle(fontSize: 18,
                                    fontWeight: FontWeight.w400,color: Colors.cyan,fontFamily:"Inconsolata"),) ,
                                Expanded(child: Text("مثلا نسيت محفظتك مفتاحك بالبيت ",style: TextStyle(fontSize:13,
                                    fontWeight: FontWeight.w400,color: Colors.black54,fontFamily:"Inconsolata"),) ,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    height: 100,width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.2)
                    ),
                    child:
                    Padding(padding: EdgeInsets.only(left: 20,right: 10),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_back_ios,size: 15,color: Colors.cyan,),

                          Image.asset("IMAG/delver.jpg",height: 90,),
                          SizedBox(width:150,),
                          Container(
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("شراء احتياجاتك",style: TextStyle(fontSize: 18,
                                    fontWeight: FontWeight.w400,color: Colors.cyan,fontFamily:"Inconsolata"),) ,
                                Expanded(child: Text("مثلا نسيت محفظتك مفتاحك بالبيت ",style: TextStyle(fontSize:13,
                                    fontWeight: FontWeight.w400,color: Colors.black54,fontFamily:"Inconsolata"),) ,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },

          ),
        )

    );
  }
}