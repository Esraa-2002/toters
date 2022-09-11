import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        // ),
        body: Padding(padding: EdgeInsets.only(top: 15),
    child:  ListView(
    children: [
    Column(
    children: [
    Row(
    children: [
    Icon(Icons.search,color: Colors.black54,),
    SizedBox(width: 10,),
    Container(
    height: 20,width: 200,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),color: Colors.white60
    ),
    child: Text("Search for stores or item",style: TextStyle(color: Colors.black54,fontSize: 15),),
    )
    ],
    ),
    SizedBox(height: 5,),

    Container(
    height: 120,width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(color: Colors.cyan),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Image.network("https://www.reginaldchan.net/wp-content/uploads/2021/11/Delivery-Tips.png",height: 90,),
    SizedBox(width: 15,),
    Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Order Anything",style: TextStyle(color: Colors.white,fontSize: 20),),
    Text("Lorem Ipsum has been \n the industry's\n standard dummy text ",style: TextStyle(color: Colors.white,fontSize: 15),),
    ],
    ),
    ),
    SizedBox(width: 70,),
    Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
    ],
    ),

    ),

    Typs("https://media-cdn.tripadvisor.com/media/photo-s/1a/17/20/13/order-food-online-from.jpg","Happy Hour","Get happy with up to 50% \n OFF from select stores bef...",28),
    Typs("https://www.blinkco.io/wp-content/uploads/2021/06/featured-image-26.jpg","Weekly Discounnts","Get happy with up to 50% \n OFF from select stores bef...",26),
    Typs("https://q3b5k8v3.stackpathcdn.com/wp-content/uploads/2021/06/halal-swwets.jpeg","Happy Hour","Get happy with up to 50% \n OFF from select stores bef...",10),
    Typs("https://www.thaqfny.com/wp-content/uploads/2022/08/Screenshot_2022-08-16-20-31-58-25.jpg","Cashback","Get happy with up to 50% \n OFF from select stores bef...",50),
    Typs("https://www.entrepreneurshipinabox.com/wp-content/uploads/How-to-Start-a-Food-Delivery-Business-from-Your-Home.jpg","Local Favoritesr","Get happy with up to 50% \n OFF from select stores bef...",13),





    ],
    ),
    ],
    ),

    ),);
  }
  Container Typs(String image,String title,String desc ,int stors){
    return Container(
        child: Padding(padding: EdgeInsets.all(10),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    height: 110,width: 150,
    decoration: BoxDecoration(image: DecorationImage(image:  NetworkImage(image))),
    ), SizedBox(width: 15,),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 7,),
            Text(desc,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
            SizedBox(height: 10,),
            Text(" $stors :stors",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.cyan),),
          ],
        ),
      )
    ],
    ) ,
        )


    );
  }
}