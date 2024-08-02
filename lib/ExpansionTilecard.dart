import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';


class ExpansionTileCardDemo extends StatefulWidget {
  ExpansionTileCardDemo({Key? key}) : super(key: key);



  @override
  _ExpansionTileCardDemoState createState() => _ExpansionTileCardDemoState();
}

class _ExpansionTileCardDemoState extends State<ExpansionTileCardDemo> {
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  var url=
"https://static.vecteezy.com/system/resources/thumbnails/030/353/613/small/natural-background-ai-generated-photo.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTile Card Demo"),
      ),
      body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ExpansionTileCard(
                baseColor: Colors.purple,
                expandedColor: Colors.yellowAccent,
                key: cardB,
                leading: CircleAvatar(child: Text('A')),
                title: Text('Tap to Expand!',style: TextStyle(color: Colors.black,fontSize: 20),),
                subtitle: Text('This is Natural.',style: TextStyle(color: Colors.black,fontSize: 20)),
                children: <Widget>[
                  Divider(
                    color: Colors.white,
                    thickness: 10.0,
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 50.0,
                        ),
                        child: Image.network(url)
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
