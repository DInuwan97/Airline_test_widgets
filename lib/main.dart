import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/screens/MainHomeScreen.dart';
import 'package:splashscreen/splashscreen.dart';


void main() => runApp(

  //  DevicePreview(
  //     builder: (context) => MyApp(),
  //  )
  MyApp()
  );


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('AIR CROATIA',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        color:Colors.blue[900],
        letterSpacing:2.0,
        fontSize: 40.0
      ),),
      image: new Image.asset('./assets/images/croatia-airlines-removebg-preview.png'),
      gradientBackground: LinearGradient(
        colors: [Colors.white,Colors.blue[200]],

      ),
      
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    )
    );
  }
}


class AfterSplash extends StatelessWidget {
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

