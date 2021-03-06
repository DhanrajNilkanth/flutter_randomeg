
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

void main() => runApp(RandomApp());

class RandomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  TextStyle text = TextStyle(fontSize: 30);
  int number = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Random Everything'),
      ),
      body: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(randomNumeric(10),style: text,),
              Text(randomBetween(10, 100).toString(),style: text,),
              Text('This is Constant $number Number',style: text,),
              Text(randomString(20),style: text,),
              Text(randomAlphaNumeric(8),style: text,),
              Text(randomMerge('Hello', 'Friends'),style: text,),
              Text(randomAlpha(5),style: text,),
            ],
          ),
        ),
      ),
    );
  }
}








