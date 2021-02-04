import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pistevov2/motivquotes.dart';
import 'package:pistevov2/watchme.dart';
import 'letsexcercise.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:getwidget/getwidget.dart';


import 'profile_page.dart';



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
  //int _length = 3;
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
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //shape: BoxShape.circle,
                  image:  DecorationImage(
                    image:  AssetImage(
                      'assets/pistevo.png',
                    ),
                    fit: BoxFit.contain
                  ),
                ),
              ),
             //  new UserAccountsDrawerHeader(
             //      accountName: new Text("PISTEVO" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 28 ,letterSpacing: 1,), ),
             //
             // ), //upper bar
             //  Divider(height: 3 , thickness : 0.6 ,  color: Colors.black,),
              Text(" PISTEVO" , style: TextStyle(fontWeight: FontWeight.bold , fontSize:28),),
              Divider(height: 13 , thickness : 1.5 ,  color: Colors.black,),
              ListTile(
                title: Text("DARK THEME" , style: TextStyle(fontSize: 18),), //dark theme switch
                trailing: Switch(
                  value: darkTheme,
                  onChanged: (changed) {
                    setState(() {
                      darkTheme = changed;
                    });
                  },
                ),
              ),
              // GFIconButton(
              //   onPressed: (){},
              //   icon: Icon(Icons.hail),
              // ),
              Divider(height: 2 , thickness : 0.6 , indent: 40 , endIndent: 40 , color: Colors.black,),

              Text(" DEVELOPERS" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),

              Divider(height: 10 , thickness : 1 , indent: 40 , endIndent: 40 , color: Colors.black,),

              Text("Aniket Kasturi" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  GFIconButton(
                    onPressed: _launchURL,
                    icon: Icon(FontAwesomeIcons.linkedin),
                    type: GFButtonType.transparent,
                  ),
                  GFIconButton(
                    onPressed: _launchURL11,
                    icon: Icon(FontAwesomeIcons.instagram),
                    type: GFButtonType.transparent,
                  ),
                ],
              ),
              Divider(),

              Text("Rohit Gupta" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  GFIconButton(
                    onPressed: _launchURL2,
                    icon: Icon(FontAwesomeIcons.linkedin),
                    type: GFButtonType.transparent,
                  ),
                  GFIconButton(
                    onPressed: _launchURL12,
                    icon: Icon(FontAwesomeIcons.instagram),
                    type: GFButtonType.transparent,
                  ),
                ],
              ),
              Divider(),

              Text("Mohammed Moheed" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  GFIconButton(
                    onPressed: _launchURL3,
                    icon: Icon(FontAwesomeIcons.linkedin),
                    type: GFButtonType.transparent,
                  ),
                  GFIconButton(
                    onPressed: _launchURL13,
                    icon: Icon(FontAwesomeIcons.instagram),
                    type: GFButtonType.transparent,
                  ),
                ],
              ),
              Divider(),

              Text("Akash Kokare" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  GFIconButton(
                    onPressed: _launchURL4,
                    icon: Icon(FontAwesomeIcons.linkedin),
                    type: GFButtonType.transparent,
                  ),
                  GFIconButton(
                    onPressed: _launchURL14,
                    icon: Icon(FontAwesomeIcons.instagram),
                    type: GFButtonType.transparent,
                  ),
                ],
              ),
              Divider(),

              Text("Riddhesh khedekar" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  GFIconButton(
                    onPressed: _launchURL5,
                    icon: Icon(FontAwesomeIcons.linkedin),
                    type: GFButtonType.transparent,
                  ),
                  GFIconButton(
                    onPressed: _launchURL15,
                    icon: Icon(FontAwesomeIcons.instagram),
                    type: GFButtonType.transparent,
                  ),
                ],
              ),



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

              QuoteList(),
              Letsexercise(),
              Watchme(),
            ],
          ),
        ), //body closed
        bottomNavigationBar: CurvedNavigationBar(
          index: _selected,
          height: 55,
          items: <Widget>[
            Icon(Icons.list,size: 40.0,color: Colors.orange,),
            Icon(Icons.gamepad,size: 40.0,color: Colors.white,),
            Icon(Icons.location_on,size: 40.0,color: Colors.red,),
            //Icon(Icons.format_quote,size: 40.0,color: Colors.brown,),

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

  _launchURL() async {                                                                //from here developers asocial
    const url = 'https://www.linkedin.com/in/aniket-kasturi-4b783b1a4/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://www.linkedin.com/in/rohit-gupta-306282205/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url = 'https://www.linkedin.com/in/mohammed-moheed-4752061a5/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL4() async {
    const url = 'https://www.linkedin.com/in/akash-kokare-410961173/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL5() async {
    const url = 'https://www.linkedin.com/in/riddhesh-khedekar-a13001191/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _launchURL11() async {
    const url = 'https://www.instagram.com/the_virgo_noid/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL12() async {
    const url = 'https://www.instagram.com/awsmdrohit/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL13() async {
    const url = 'https://www.instagram.com/mohd.moheed.5836/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL14() async {
    const url = 'https://www.instagram.com/akashkokare29_official/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL15() async {
    const url = 'https://www.instagram.com/riddhesh_khedekar_06/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }






}

