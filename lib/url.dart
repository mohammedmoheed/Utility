//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Url extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    runApp(new Scaffold(

      body: new Center(

        child: new RaisedButton(onPressed: _launchURL,
          child: new Text("Show Flutter "),


        ),

      ),
    ));

  }

  _launchURL() async {

    const url = "https://flutter.io";
    if(await canLaunch(url)) {
      await launch(url);
    }
    else
      throw 'Cannot launch $Url';
  }
}


    // TODO: implement build
    //return null;


  //void main (){



