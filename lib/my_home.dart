import 'package:flutter/material.dart';

import 'config.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '多环境',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '多环境'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Hello',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline,
            ),
            new Text(Config.helloMessage,
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
            Config.helloIcon,
          ],
        ),
      ),
    );
  }
}
