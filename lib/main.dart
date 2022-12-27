import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(width: double.infinity),
                Image(image: AssetImage('images/1.png')),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'شروع بازی',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                Image(image: AssetImage('images/2.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
