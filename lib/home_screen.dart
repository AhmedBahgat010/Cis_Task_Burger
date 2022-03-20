import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/item_screen.dart';

import 'constat.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<IconData> icons =[
    FontAwesomeIcons.hamburger,
    FontAwesomeIcons.pizzaSlice,
    FontAwesomeIcons.bowlingBall,
    FontAwesomeIcons.drum,
    FontAwesomeIcons.drum,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor:  backGroundColor,
        elevation: 0,
        leading:  IconButton(
            onPressed: (){},
            icon: const Icon(Icons.add,
              color:iconColor,size: 30,)
        ),
        actions: const [
          Icon(Icons.search,
            color:iconColor,size: 30,),
          SizedBox(width: 10,),

        ],
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Padding(
            padding: EdgeInsets.only(left:20,top: 0,bottom: 20),
            child: Text(
                'Food Menu',
              style: TextStyle(color: Colors.black,
                  fontSize: 28,fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 20),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){},
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Icon(icons[index],
                              color: Colors.black,),
                          ),
                        ),
                        Text('data')
                      ],
                    ),
                  );
                }  ,
                separatorBuilder: (context ,index){
                  return SizedBox(width: 10,);
                },
                itemCount: icons.length
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',style:
                TextStyle(color: Colors.black,fontSize: 28),),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          Expanded(
              flex:3,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return  InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>ItemScreen())
                        );
                      },
                        child: cardItem());
                  },
                  separatorBuilder:(context, index) {
                    return  SizedBox(height: 10,);
                  },
                  itemCount: 15
              )
          )

        ],
      ),

    );
  }
}


Widget cardItem(){
  return Container(
    width: double.infinity,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
    ),
    child: Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://top10cairo.com/wp-content/uploads/2015/12/best-burger-restaurant-places-in-cairo-696x365.jpg')
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 25,right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: Text('data',style:
              TextStyle(backgroundColor: Colors.white,fontSize: 25),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('data'),
                  Spacer(),
                  Icon(Icons.star,color: Colors.amber,),
                  Text('data'),
                ],
              ),
              Text('datadatadatadatadatadata')
            ],
          ),
        ),
      ],
    ),
  );
}