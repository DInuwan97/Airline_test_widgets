import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/screens/MainHomeScreen.dart';


void main() => runApp(

  //  DevicePreview(
  //     builder: (context) => MyApp(),
  //  )
  MyApp()
  );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Oxygen'
      ),
      debugShowCheckedModeBanner: false,
      home: MainHomeScreen(),
    );
  }
}

