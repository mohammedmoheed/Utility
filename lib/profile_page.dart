//import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:pistevov2/backend.dart';

class Profile_page extends StatefulWidget {
  @override
  Profile_pageState createState() => new  Profile_pageState();
}

class Profile_pageState extends State<Profile_page> {

  final controller_name = TextEditingController();
  final controller_address = TextEditingController();

  String text_to_show;









  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: new Text("User Information"), backgroundColor: Colors.blueAccent,),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        //name
        TextField(controller: controller_name,
          decoration: InputDecoration(hintText: 'Enter Name'),),

        //address
        TextField(controller: controller_address,
          decoration: InputDecoration(hintText: 'Enter Address'),),

        // 2 buttons
        Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(onPressed: () =>
               saveData(controller_name.text,controller_address.text),
              child: Text('Save Data'),),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(onPressed: () =>
             readData(controller_name.text , controller_address  ),
              child: Text('Read Data'),

            ),
          ),
        ],
        ),

         Text('$text_to_show'),

      ],
      )
    );
  }

  saveData(String key, String value ) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key,value);
    Fluttertoast.showToast(msg: 'Saved Information !!' ,toastLength: Toast.LENGTH_SHORT);
  }

  readData(String text, controller_name  ) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      text_to_show = prefs.getString(text);
    });

  }







  //readData(String text, controller_address) async {
    //final prefs = await SharedPreferences.getInstance();
    //setState(() {
      //text_to_show = prefs.getString(text);
    //});
  //}

}





