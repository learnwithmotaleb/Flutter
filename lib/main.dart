import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('News Feed'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Determine the current device orientation
    final Orientation orientation = MediaQuery.of(context).orientation;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: Center(
              child: Placeholder(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey,
                  child: Center(child: Text('150 x 150')),
                ),
              ),

              // child: Image.network(
              //
              //   'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg',
              //   width: 150,
              //   height: 150,
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        );
      },
    );
  }
}
