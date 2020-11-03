import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  ScrollController _scrollController = new  ScrollController();

  List<Quote> quotes =[

    Quote( author: '_ Dr. Seuss', text: '“You’re off to great places, today is your day. Your mountain is waiting, so get on your way.'),

    Quote( author: '_ Mickey Rooney', text: '“You always pass failure on the way to success.”'),

    Quote( author: '_ Wolfgang Riebe', text: '“No one is perfect - that’s why pencils have erasers.”'),

    Quote( author: '_ Bonnie Blair', text: '“Winning doesn’t always mean being first. Winning means you’re doing better than you’ve done before.”'),

    Quote( author: '_ A.A. Mine', text: '“You’re braver than you believe, and stronger than you seem, and smarter than you think.”'),

    Quote( author: '_ Nelson Mandela', text: '“It always seems impossible until it is done.”'),

    Quote( author: '_ Helen Keller', text: '“Keep your face to the sunshine and you cannot see a shadow.”'),

    Quote( author: '_ Willie Nelson', text: '“Once you replace negative thoughts with positive ones, you’ll start having positive results.”'),

    Quote( author: '_ Zig Ziglar', text: '“Positive thinking will let you do everything better than negative thinking will.”'),

    Quote( author: '_ Les Brown', text: '“In every day, there are 1,440 minutes. That means we have 1,440 daily opportunities to make a positive impact.”'),

    Quote( author: '_ Stephen Richards', text: '“The only time you fail is when you fall down and stay down.”'),

    Quote( author: '_ Paulo Coelho', text: '“When you are enthusiastic about what you do, you feel this positive energy. It’s very simple.”'),

    Quote( author: '_Elbert Hubbard', text: '“Positive anything is better than negative nothing.”'),

    Quote( author: '_Tim Howard', text: '“Winning is fun, but those moments that you can touch someone’s life in a very positive way are better.”'),

    Quote( author: '_ Lou Holtz', text: '“Virtually nothing is impossible in this world if you just put your mind to it and maintain a positive attitude.”'),

    Quote( author: '_ Mary Lou Retton', text: '“Optimism is a happiness magnet. If you stay positive good things and good people will be drawn to you.”'),

    Quote( author: '_ Ellen DeGeneres', text: '“It makes a big difference in your life when you stay positive.”'),

    Quote( author: '_ Milton Berle', text: '“If opportunity doesn’t knock, build a door.”'),

    Quote( author: '_ Francesca Reigler', text: '“Happiness is an attitude. We either make ourselves miserable, or happy and strong. The amount of work is the same.”'),

    Quote( author: '_ Les Brown', text: '“You are never too old to set another goal or dream a new dream.”'),

    Quote( author: '_ steve jobs', text: '“your time is limited so dont waste it living someone elses life.”')

  ];

  Widget quoteTemplate(quote)  {
    return Card(
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(12),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[

              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                ),

              ),
              SizedBox(height: 6),

              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),

              ),
              SizedBox(height: 6),
            ],
          ),
        )



    );
  }
  @override
  void dispose() {
    _scrollController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Motivational Quotes'),
          centerTitle: true,


        ),

        body: ListView(

          controller: _scrollController,

          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration (
                  gradient: LinearGradient(
                    colors: [ const Color(0xFF5032b6),
                      const Color(0xFFb765d3)],
                  )
              ),

              child: Column(
                children: quotes.map((quote) => quoteTemplate(quote)).toList(),
              ),
            )
          ],
        )



      // children: quotes.map( (quote) {
      // return Text(quote);
      //  }).toList()


    );
  }
}

class Quote{

  String text;
  String author;

  Quote (  {this.text  , this.author} ) ;

}

