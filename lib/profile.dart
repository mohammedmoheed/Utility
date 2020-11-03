//import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

import 'package:flutter/foundation.dart';
//import 'package:pistevov2/settings.dart';
import 'package:pistevov2/url.dart';
//import 'package:url_launcher/url_launcher.dart';

final startColor = Color(0xff5b86e5);
final endColor = Color(0xff36d1dc);
final titleColor = Color(0xff444444);
final textColor = Color(0xFFa9a9a9);
final shadowColor = Color(0xffe9e9f4);

void main() {
  //if (defaultTargetPlatform == TargetPlatform.iOS) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        //.copyWith(statusBarBrightness: Brightness.dark));
  }

//}

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [startColor, endColor])),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 45, left: 20),
                      child: IconButton(
                        icon: Icon(
                          Icons.account_box,
                          color: Colors.white,
                        ),
                        onPressed: (



                            ) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'About us',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 20),
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.lightBlueAccent,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  new CardHolder(),
                  //SizedBox(
                    //height: 50,
                  //)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardHolder extends StatelessWidget {
  const CardHolder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 150, right: 20, left: 20),
      height: 600,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: titleColor.withOpacity(.1),
                blurRadius: 20,
                spreadRadius: 10),
          ]),
      child: pCard(),
    );
  }
}

class pCard extends StatelessWidget {
  const pCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pistevo.png'), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: Colors.blueAccent.withOpacity(.2), width: 1)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '                PISTEVO \n "BY GYPSY DEVELOPERS"',
          style: TextStyle(
            color: titleColor,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            SizedBox(
              width: 10,
            ),



          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 20, right: 20, top: 8),
          width: 320,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 30,
                    spreadRadius: 5)
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Website',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),


                      Text(
                        ("www.gypsydevelopers.blogspot.com"),
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.headset,
                                size: 15,
                              ),
                              onPressed:() {
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => Url()));
                              }),

                        ],
                      )
                    ],
                  )
                ],
              ),
              Text(
                'Biography',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                  '  \n  -An Assistant At Your FingerTips \n  -Specially Designed For Alzheimer Patients \n  -To Deal With Common Problems Faced By  \n    the Patients')
            ],
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Divider(
                height: 1,
                color: titleColor.withOpacity(.3),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[

                IconButton(
                  icon: Icon(
                    Icons.linked_camera,
                    size: 40,
                  ),
                ),




                Column(
                  children: <Widget>[
                    Text(
                      ' INSTAGRAM',

                      style: TextStyle(color: Colors.black, fontSize: 22),





                    ),
                    Text(
                      '   https://instagram.com/gypsy',
                      style: TextStyle(color: textColor, fontSize: 18,),
                    )
                  ],
                ),
                SizedBox(
                  width: 14,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
