import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const GmaeApplication());
}

class GmaeApplication extends StatefulWidget {
  const GmaeApplication({super.key});

  @override
  State<GmaeApplication> createState() => _GmaeApplicationState();
}

class _GmaeApplicationState extends State<GmaeApplication> {
  int top = 2;
  int bottom = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vb'),
      home: Scaffold(
        backgroundColor: Colors.deepOrange[600],
        appBar: AppBar(
          title: Text('سنگ   کاغذ   قیچی'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          elevation: 3.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // SizedBox(width: double.infinity),
              Image(
                image: AssetImage('images/$top.png'),
                height: 100.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      top = Random().nextInt(3) + 1;
                      bottom = Random().nextInt(3) + 1;
                    });
                  },
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  )),
              Image(
                image: AssetImage('images/$bottom.png'),
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
