import 'package:flutter/material.dart';

import 'listver.dart';
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _RegisterState();
}

class _RegisterState extends State<loginpage> {
  bool Checked = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
    child:  GestureDetector(
    onTap: (){

    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=> vert()));
    },
    child:  Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),

    ),



    ),
    ),
    SizedBox(height: 10,),
    Align(
    alignment: Alignment.centerRight,
    child:  Text("Forgget Passowrd?",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black54),),
    ),
    SizedBox(height: 20,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    height: 1,width:120,
    color: Colors.grey,
    ),
    Container(
    height: 30,width: 30,
    decoration: BoxDecoration(border: Border.all(color: Colors.black45),borderRadius: BorderRadius.circular(5),),
    child: Center(
    child: Text("OR",style: TextStyle(fontSize: 15,
    fontWeight: FontWeight.normal,color: Colors.black45),),
    ),
    ),
    Container(
    height: 1,width:120,
    color: Colors.grey,
    ),
    ],
    ),
    SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("Image/google.jpeg.png",height: 35,width: 35,),
          Image.asset("Image/face.jpeg",height: 35,width: 35,),
          Image.asset("Image/insta.jpeg",height: 45,width: 45,),
        ],

      ),
      SizedBox(height: 10,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Need an account? ",style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.normal,color: Colors.black45),),
          SizedBox(width: 5,),
          Text("SING UP",style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.normal,color: Colors.black45,
              decoration: TextDecoration.underline),),
        ],

      ),


    ],
    ) ,

        ),

    );
  }
}