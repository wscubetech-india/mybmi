import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();

  var htFeetController = TextEditingController();

  var htInchController = TextEditingController();

  var result = "Result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyBmi'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: wtController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Enter Weight')
                  )
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: htFeetController,
                  decoration: InputDecoration(
                      label: Text('Enter Height in Feet')
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: htInchController,
                  decoration: InputDecoration(
                      label: Text('Enter Height in Inches')
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 34,
                ),
                ElevatedButton(onPressed: (){
                  var wt = int.parse(wtController.text.toString());
                  var ft = int.parse(htFeetController.text.toString());
                  var inches = int.parse(htInchController.text.toString());

                  var tInches = (ft*12)+inches;

                  var tCm = tInches*2.53;

                  var tM = tCm/100;

                  var bmi = wt/pow(tM, 2);

                  print(bmi);

                  result = "Your BMI is: ${bmi.toStringAsFixed(2)}";

                  setState((){

                  });
                  


                }, child: Text('Calculate')),
                SizedBox(
                  height: 21,
                ),
                Text(result, style: TextStyle(fontSize: 34),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
