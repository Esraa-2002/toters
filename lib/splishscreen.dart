import 'package:flutter/material.dart';

import 'listvar.dart';

import 'package:flutter/material.dart';

import 'login.dart';

class splishscraan extends StatefulWidget{
  @override
  State<splishscraan> createState() => _SplashState();
}

class _SplashState extends State<splishscraan> {
  Future Delay() async {
    await new Future.delayed(const Duration(seconds: 5));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Register ()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff00B391),
      body: Center(
        child:  Row(children: [
          Padding(padding:  EdgeInsets.only(left: 100),
            child:   Image. network("https://d1fdloi71mui9q.cloudfront.net/vtpLdibwTxG7DM5bqYb7_2qX78vMe0t3TUXzm",height: 1000,width:300 ,)
               ,
          )

        ],
        )
      )
    );
  }

}
