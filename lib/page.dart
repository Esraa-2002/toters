import 'package:flutter/material.dart';
 class number extends StatefulWidget {
   const number({Key? key}) : super(key: key);

   @override
   State<number> createState() => _numberState();
 }

 class _numberState extends State<number> {
   TextEditingController number=TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.grey,
           elevation: 3,
           leading:Icon(Icons.arrow_back,color: Colors.black,),
         ),
         body: SafeArea(
           child:   Expanded(child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(padding: EdgeInsets.all(40)),
               Container(
                 height: 20,
                 width: 100,
                 decoration: BoxDecoration(
                   color: Colors.grey,
                   borderRadius: BorderRadius.circular(20),

                 ),

               )
               ,
               SizedBox(
                 height: 10,
               ),
               Padding(padding:  EdgeInsets.only(right: 39),child: Text(
                 "ادخل رقم الهاتف",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
               ),),
               Container(
                 height:50 ,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     border:Border.all(width: 30,color: Colors.grey.withOpacity( 0.3))
                 ),
                 child: Row(
                   children: [
                     TextFormField(
                       controller: number,
                       decoration: const InputDecoration(
                         border:  UnderlineInputBorder(),
                         labelText: "Enter number",

                       ),


                     )

                   ],
                 ),
               ),

             ],
           ),  )

         )
     );
   }
 }

