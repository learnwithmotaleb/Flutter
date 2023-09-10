import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'https://learnwithmotaleb.com',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
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
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DateTime Project',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Current Date: ${time.year}/${time.month}/${time.day}"),
            SizedBox(
              height: 20,
            ),
            Text("Current Time: ${time.hour}:${time.minute}:${time.second}"),
            SizedBox(
              height: 20,
            ),
            Text(
                'Current Time with DateFormat: ${DateFormat('yMMMMEEEEd').format(time)}'),
            SizedBox(
              height: 20,
            ),
            Text(
                'Current Time with DateFormat: ${DateFormat('yMMMM').format(time)}'),
            SizedBox(
              height: 20,
            ),
            Text(
                'Current Time with DateFormat: ${DateFormat('yMMMMd').format(time)}'),
            SizedBox(
              height: 20,
            ),
            Text(
                'Current Time with DateFormat: ${DateFormat('yMMMd').format(time)}'),
            SizedBox(
              height: 20,
            ),
            Text(
                'Current Time with DateFormat: ${DateFormat.yMMMEd().format(time)}'),
            SizedBox(
              height: 40,
            ),
            Text('Selected Date'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    lastDate: DateTime.now(),
                    firstDate: DateTime(2000),
                  );
                  if (datePicker != null) {
                    print("${datePicker.year}-${datePicker.month}-${datePicker.day}");
                  }
                },
                child: Text('Show DatePicker')),
            SizedBox(height: 20,),
            Text('Selected Time'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timepicker = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(
                        hour: time.hour,
                        minute: time.minute,
                      ),
                    initialEntryMode: TimePickerEntryMode.dial
                  );
                  if (timepicker != null) {
                    print("${timepicker.hour}:${timepicker.minute}");
                  }
                },
                child: Text('Show TimePicker'))
          ],
        ),
      ),
    );
  }
}
