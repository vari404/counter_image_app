import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter and Image App',
      home: CounterAndImageToggle(),
    );
  }
}

class CounterAndImageToggle extends StatefulWidget {
  @override
  _CounterAndImageToggleState createState() => _CounterAndImageToggleState();
}

class _CounterAndImageToggleState extends State<CounterAndImageToggle> {
  int _counter = 0;
  bool _isFirstImage = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter and Image App'),
      ),
      body: Center(
        child: SingleChildScrollView( // Added to prevent overflow on smaller screens
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter Value: $_counter',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Increment'),
              ),
              SizedBox(height: 40),
              _isFirstImage
                  ? Image.asset('asset/image1.png', height: 200)
                  : Image.asset('asset/image2.png', height: 200),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleImage,
                child: Text('Toggle Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

