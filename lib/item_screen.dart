import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/constat.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              color: Colors.red,

            ),
            Positioned(
                top: 70,
                left: 25,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        icon:Icon(Icons.arrow_back_ios,color: Colors.white,)
                )
                  ],
                )
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height/2-70,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                  )
                ),
                child: Column(
                  children: [

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
