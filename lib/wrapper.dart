import 'package:flutter/material.dart';
import 'package:real_rpg/view/mainInterface/mainInterface.dart';

class Wrapper extends StatefulWidget {
  static const routeName = '/wrapperPage';

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  @override
  Widget build(BuildContext context) {
    return MainInterface();
  }
}