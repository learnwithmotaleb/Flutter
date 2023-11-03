import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var datalist = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info App'),
      ),
      body: ListView.builder(
        itemCount: datalist.length,
          itemBuilder: (context,index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City: "+datalist[index]['city'].toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                    Text("Temperature: "+datalist[index]['temperature'].toString()+"\u00B0C",style: TextStyle(color: Colors.grey,fontSize: 16)),
                    Text("Condition: "+datalist[index]['condition'].toString(),style: TextStyle(color: Colors.grey,fontSize: 16)),
                    Text("Humidity: "+datalist[index]['humidity'].toString()+"%",style: TextStyle(color: Colors.grey,fontSize: 16)),
                    Text("WindSpeed: "+datalist[index]['windSpeed'].toString()+" m/s",style: TextStyle(color: Colors.grey,fontSize: 16)),
                  ],

                ),
              ),
            );

          }
      )
    );
  }
}
