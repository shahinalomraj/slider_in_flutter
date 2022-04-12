import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello Flutter",style: TextStyle(fontSize: _value),),
          SizedBox(height: 50,),
          Slider(
            min: 10,
              max: 30,
              value: _value, onChanged: (value) {
              setState(() {
                _value = value;
                print(_value);
              });
          })
        ],
      ),
    );
  }
}

