import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Flutter live extended'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String humanOne = 'human_1';
  String humanTwo = 'human_2';
  String humanThree = 'human_3';
  String humanFour = 'human_4';
  String humanFive = 'human_5';

  String animationLabel = 'human_3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 250.0,
            child: FlareActor("assets/human.flr",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: animationLabel),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.group_work),
                  onPressed: () {
                    setState(() {
                      animationLabel = humanOne;
                    });
                  },
                  iconSize: 30.0,
                ),
                IconButton(
                  icon: Icon(Icons.group_work),
                  onPressed: () {
                    setState(() {
                      animationLabel = humanTwo;
                    });
                  },
                  iconSize: 30.0,
                ),
                IconButton(
                  icon: Icon(Icons.group_work),
                  onPressed: () {
                    setState(() {
                      animationLabel = humanThree;
                    });
                  },
                  iconSize: 30.0,
                ),
                IconButton(
                  icon: Icon(Icons.group_work),
                  onPressed: () {
                    setState(() {
                      animationLabel = humanFour;
                    });
                  },
                  iconSize: 30.0,
                ),
                IconButton(
                  icon: Icon(Icons.group_work),
                  onPressed: () {
                    setState(() {
                      animationLabel = humanFive;
                    });
                  },
                  iconSize: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
