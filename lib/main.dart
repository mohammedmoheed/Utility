import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pistevov2/Alassist.dart';
import 'package:pistevov2/motivquotes.dart';
import 'package:pistevov2/watchme.dart';
import 'letsexcercise.dart';


//import 'motivquotes.dart';

void main() => runApp(Pistevo());

class Pistevo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key : key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkTheme = false;
  int _selected = 0;
  PageController _pageController;



  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: darkTheme ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        drawer: Drawer(
            child: Column(children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: new Text("SETTINGS"),
                  accountEmail: new Text("Personalised settings")), //upper bar

              ListTile(
                title: Text("Dark Theme"), //dark theme switch
                trailing: Switch(
                  value: darkTheme,
                  onChanged: (changed) {
                    setState(() {
                      darkTheme = changed;
                    });
                  },
                ),
              )
            ])),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selected = index;
              });
            },
            children: <Widget>[
              Letsexercise(),
              Letsexercise(),
              Watchme(),
              QuoteList(),
              AlassyDialogFlow(),
            ],
          ),
        ), //body closed
        bottomNavigationBar: CurvedNavigationBar(
          index: _selected,
          height: 45,
          items: <Widget>[
            Icon(Icons.list,size: 40.0,color: Colors.white,),
            Icon(Icons.gamepad,size: 40.0,color: Colors.orange,),
            Icon(Icons.location_on,size: 40.0,color: Colors.redAccent,),
            Icon(Icons.format_quote,size: 40.0,color: Colors.brown,),
            Icon(Icons.chat,size: 40.0,color: Colors.greenAccent,),
          ],
          color: Colors.blue,
          buttonBackgroundColor: Colors.lightBlueAccent,
          backgroundColor: Colors.white ,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),

          onTap: (index) {
            //setState(() => _pageController = _pageController);
            _pageController.jumpToPage(index);
          },

        ),
      ),
    );
  }
}