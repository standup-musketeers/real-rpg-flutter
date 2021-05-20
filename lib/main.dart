import 'package:flutter/material.dart';
import 'package:real_rpg/splashScreen.dart';
import 'package:real_rpg/wrapper.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Real RPG",
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: Wrapper(),
          );
        });
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        Wrapper.routeName: (context) => Wrapper(),
      },
    );
  }
}