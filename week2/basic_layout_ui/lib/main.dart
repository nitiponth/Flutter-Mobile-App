import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image.jpg',
              width: 392.7,
              height: 300,
            )
          ],
        ),
        TitleSection(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
        ),
        Button(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
        ),
        TextShow(),
      ])),
    ));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Osechinen Lake Campgroud',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Kanderstegm, Switzerland',
              style: TextStyle(color: Colors.grey.shade400),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text('4.1'),
          ],
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Column(
        children: [
          Icon(Icons.phone, color: Colors.blue),
          Container(
            margin: EdgeInsets.only(bottom: 5),
          ),
          Text('call', style: TextStyle(color: Colors.blue))
        ],
      ),
      Column(
        children: [
          Icon(Icons.map, color: Colors.blue),
          Container(
            margin: EdgeInsets.only(bottom: 5),
          ),
          Text('route', style: TextStyle(color: Colors.blue))
        ],
      ),
      Column(
        children: [
          Icon(Icons.share, color: Colors.blue),
          Container(
            margin: EdgeInsets.only(bottom: 5),
          ),
          Text('share', style: TextStyle(color: Colors.blue))
        ],
      )
    ]);
  }
}

class TextShow extends StatelessWidget {
  const TextShow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Text(
          'Oeschinen Lake or Oeschinensee as the Swiss call it, is one of the best lakes in Switzerland, if not on the earth. Oeschinen Lake lies in the Kandertal valley in Bernese Oberland region of Switzerland. If you love swimming, rowing, fishing and a barbeque by the lake, or just the breathtaking Alpine views, then this place must be on top of your Switzerland Bucketlist. Moreover, The mountains and valleys around here are an open invitation to serious hikers!'),
    );
  }
}
