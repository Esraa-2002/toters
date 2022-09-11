import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    required Key key,
    required this.scrollController,
  }) : super(key: key);
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) => ListView(
    padding: EdgeInsets.all(16),
    controller: scrollController,
    children: [
        Column(children: [
          Container(
            height: 10,
            width:  100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),

            ),
          ),
          Container(
            child: Column(
              children: [
               Text("ادخل رقم الهاتف" ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
              ],
            ),
          )

        ],),

      Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),

        ),
      ),

    ],
  );
}