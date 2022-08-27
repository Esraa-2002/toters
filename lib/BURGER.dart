import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Stack(
              children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.network(
              'https://www.seriouseats.com/thmb/BJiK216mCmsv-F3MFfnJEnjRT44=/1500x1125/filters:fill(auto,1)/20210607-INNOUTBURGERS-JANJIGIAN-seriouseats-23-b2b8a505ff414272aab71590a8985b85.jpg'),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Text(
              'Fire Fire - Al Saydiya',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 25,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              'We offer the most delicious burgers with our speical and qunique American taste',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
          ),
          Row(
              children: [
          Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Container(
            padding: EdgeInsets.only(bottom: 6, top: 6, right: 6),
            decoration: BoxDecoration(
                color: Colors.orangeAccent.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Row(
                children: [
                  Icon(Icons.attach_money,
                      color: Colors.orange, size: 26),
                  Text(
                    '10% Cashback',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
    child: Container(
    padding:
    EdgeInsets.only(bottom: 6, top: 6, right: 6, left: 6),
    decoration: BoxDecoration(
    color: Colors.blueAccent.withOpacity(0.15),
    borderRadius: BorderRadius.circular(8)),
    child: Center(
    child: Row(
    children: [
    Icon(Icons.control_point_sharp,
    color: Colors.blue, size: 26),
    Text(
    'Earn points',
    style: TextStyle (

        color: Colors.blue,
        fontWeight: FontWeight.w800,
        fontSize: 20),
    ),
    ],
    ),
    ),
    ),
        )
              ],
          ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        '4.8',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          Text('Based on 1200 ratings',style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 13,
                              fontWeight: FontWeight.w300
                          ),)
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Icon(Icons.keyboard_arrow_right,size: 35,color: Colors.green,),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Adan',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,

                                ),
                                Icon(
                                    Icons.star,
                                    color: Colors.green,
                                    size: 20,

                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,

                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("الطعم رهيب حبيته كلش والتوصيل سريع انشاءلله مو اخر مره كلش ...",style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 17,
                        ),textDirection: TextDirection.rtl,
                        ),
                      )
                    ],
                  ),
                )
              ],
              ),
                Positioned(
                  right: 20,
                  top: 279,
                  child: Container(
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('36 - 46',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text('mins',style: TextStyle(
                              color: Colors.black.withOpacity(0.3)
                          ),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
          ),
        ),
    );
  }
}