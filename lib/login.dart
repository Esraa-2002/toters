


import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool Checked = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(45),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 30,),
            Text("Email",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey.withOpacity(0.5)),),
            SizedBox(height: 5,),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter email",
              ),
            ),
            SizedBox(height: 20,),
            Text("Password",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey.withOpacity(0.5)),),
            SizedBox(height: 5,),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter Password",
              ),
            ),
            SizedBox(height: 10,),

            CheckboxListTile(
                title: Text("Remember me?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                checkColor: Colors.white,
                activeColor: Colors.pink,

                value: Checked,
                onChanged: (value){
                  setState(() {
                    Checked = value!;

                  });
                }),

            Container(
              height: 55,
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.pink,boxShadow: [BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.grey,
                  offset:Offset (0,5)
              )]),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
                onPressed: (){
                  print(" Email : ${email.text} ,  Password : ${password.text}  ");
                },
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
              ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerRight,
              child:  Text("Forgget Passowrd?",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black54),),
              
            ),
            Row(children: [
              Container(
                height: 2,
                width: 160,
                color: Colors.grey.withOpacity( 0.4),
              ),

              Container(
                height: 40,
                width:60,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2,color: Colors.grey.withOpacity( 0.4),)
                ),
                padding: EdgeInsets.only(left: 10),child:  Text("OR",style: TextStyle(fontSize: 30,color: Colors.grey.withOpacity( 0.4)),),

              ),
              Container(
                height: 2,
                width: 160,
                color: Colors.grey.withOpacity( 0.4),
              ),

            ],),SizedBox(height:10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  height: 50,
                  width:50 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.red,width: 4,)
                  ),
                 padding: EdgeInsets.only(left: 11),child:  Text("G",style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold ),),
                ),
                SizedBox(width:10 ,),
                Container(
                  height: 50,
                  width:50 ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blue,width: 4,)
                  ),
                  padding: EdgeInsets.only(left: 13),child:  Text("f",style: TextStyle(fontSize: 35,color: Colors.blue ,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width:10 ,),
                Container(
                  height: 50,
                  width:50 ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blue,width: 4,)
                  ),
                  padding: EdgeInsets.only(left: 11),child:  Text("in",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold ),),
                )

              ],

            ),
            SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Need an account?",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black54 ),),
                  Column(
                    children: [

                      Text(" SIGN UP",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black54 ),),
                      Container(
                        height: 1,
                        width: 70,
                        color: Colors.black54,
                      ),

                    ],
                  )

                ],
              )

          ],
        ) ,


      ),


    );
  }
}