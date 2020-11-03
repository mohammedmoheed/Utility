import 'package:flutter/material.dart';
import 'package:pistevov2/Alassist.dart';
//import 'package:pistevov2/backend.dart';
import 'package:pistevov2/motivquotes.dart';
import 'package:pistevov2/profile_page.dart';
import 'package:pistevov2/settings.dart';
import 'package:pistevov2/todolist.dart';
import 'package:pistevov2/watchme.dart';
import 'letsexcercise.dart';
import './profile.dart';
import 'dart:io';


//import 'motivquotes.dart';

void main() => runApp(Pistevo());

class Pistevo extends StatelessWidget{

  @override
  Widget build(BuildContext context){
      return  MaterialApp(
        home: Home()
      );
  }
}
class Home extends StatelessWidget{


  @override

  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(title: Text('Assitance at fingertips')),
    backgroundColor: Colors.lightBlue,
    drawer: Drawer(
      child: Column(
        children: <Widget>[

          new UserAccountsDrawerHeader(accountName: new Text("User"), accountEmail: new Text("User mail")), //upper bar

          new ListTile(
            title: new Text ("Profile"),
            trailing: new Icon (Icons.fiber_manual_record),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (context) => Profile_page()));

            }
          ),


          new ListTile(
            title: new Text("About Us"),
            trailing: new Icon(Icons.verified_user),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (context) => Aboutus()));
            }
          ),
          new ListTile(
            title: new Text("Settings"),
            trailing: new Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(builder: (context) => Settings()));
            }
          ),
          new Divider(),
          new ListTile(
            title: new Text("Quit"),
            trailing: new Icon(Icons.cancel),
            onTap: ()=> exit(0),

          ),
        ],
      ),
    ),
      body: Container(                                                                  //Background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("../assets/bluegeo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding:  EdgeInsets.all(30.0),
        child: GridView.count(
            crossAxisCount: 2,
          children: <Widget>[
            Card(                                                                           //card - game
              child: InkWell(
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.gamepad,size: 70.0,color: Colors.lightGreenAccent,),
                      Text("GAME", style: new TextStyle(fontSize: 17.0),)
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>Letsexercise()));

                },
              ),
            ),
            Card(                                                                         //card - to do list
              child: InkWell(
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.list,size: 70.0,color: Colors.blueAccent,),
                      Text("TO DO LIST", style: new TextStyle(fontSize: 17.0),)
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>ToDoList()));

                },
              ),
            ),
            Card(                                                                              //card - to do list
              child: InkWell(
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.location_on,size: 70.0,color: Colors.redAccent,),
                      Text("WATCH ME", style: new TextStyle(fontSize: 17.0),)
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>Watchme()));

                },
              ),
            ),
            Card(                                                                              //card - motiv quotes
              child: InkWell(
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.format_quote,size: 70.0,color: Colors.brown,),
                      Text("Motivational quotes", style: new TextStyle(fontSize: 17.0),)
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>QuoteList()));

                },
              ),
            ),
            Card(                                                                              //card - motiv quotes
              child: InkWell(
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.chat,size: 70.0,color: Colors.deepPurple,),
                      Text("Alassist-Chatbot", style: new TextStyle(fontSize: 17.0),)
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) =>AlassyDialogFlow()));

                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}



