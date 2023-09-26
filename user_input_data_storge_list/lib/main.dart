import 'package:flutter/material.dart';
import 'package:todoapp/responsive_style/style.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutterlearning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List toDoList = [

  ];

  String Item = "";

  MyInputOnChange(textvalue){
    setState(() {
      Item = textvalue;
    });
  }
  AddItem(){
    setState(() {
      toDoList.add({"item":Item});
    });
  }
  RemoveItem(index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('To Do App'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Row(

                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            onChanged: (textvalue){
                              MyInputOnChange(textvalue);
                            },
                            decoration: InputDecoration(
                                labelText: 'List Items',

                                border: OutlineInputBorder(

                                )
                            ),
                          ),
                        )
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              child: ElevatedButton(onPressed: (){AddItem();},child: Text('Add',style: TextStyle(
                                fontSize: 20,
                              ),),)),
                        )
                    ),
                  ],

                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                  flex: 90,
                  child: ListView.builder(
                      itemCount: toDoList.length,
                      itemBuilder: (context, index){
                        return Card(
                          child:sizedBox50(
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Text(toDoList[index]['item'].toString())
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: IconButton(
                                        icon: Icon(Icons.delete),
                                        onPressed: (){
                                          RemoveItem(index);
                                        },
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),

                        );

                      }


                  )
              ),


            ],
          ),
        )
    );
  }
}
