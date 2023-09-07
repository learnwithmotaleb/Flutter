import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 70,
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        leading: Icon(Icons.add_business_sharp),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is mod 5 Assignment',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'MY',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 28,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '   phone',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            )),
                        TextSpan(
                            text: ' name',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            )),
                        TextSpan(
                            text: ' Your phone name',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            )),
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
