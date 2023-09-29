import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _buildPortraitLayout()
              : _buildLandscapeLayout();
        },
      ),
    );
  }
}

Widget _buildPortraitLayout() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Expanded(
          flex: 3,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                width: 400,
                height: 400,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
            child: Text('John Doe',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),)),
        Expanded(
    flex: 2,
    child: Text('The Quick the brawn the fox jumped over the lazy dog, amr sonar bangla ami tomay vlobashi chrodin tomar akash tomar  ',style: TextStyle(
      fontSize: 18
    ),)),
        Expanded(
          flex: 3,
          child: GridView(
            children: [
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.red,
                width: 150,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
                height: 150,
              ),
              Container(
                color: Colors.red,
                width: 150,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                ),
                height: 150,
              ),
            ],

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),

          ),
        )
      ],
    ),
  );
}

Widget _buildLandscapeLayout() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                fit: BoxFit.fill,
                width: 160,
                height: 200,


              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                  child: Text('John Doe',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
              Expanded(
                  child: Text('The Quick the brawn the fox jumped over the lazy dog, amr sonar bangla ami tomay vlobashi chrodin tomar akash tomar  ',style: TextStyle(
                      fontSize: 16
                  ),)),
              Expanded(
                flex: 3,
                child: GridView(
                  children: [
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                        width: 400,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                        width: 400,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                        width: 400,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                        width: 400,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                        width: 400,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                      height: 100,
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg",
                        width: 400,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                      height: 100,
                    ),
                  ],

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),

                ),
              )
            ],
          ),
        )

      ],
    ),
  );
}
