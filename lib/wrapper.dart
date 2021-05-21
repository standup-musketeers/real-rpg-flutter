import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_rpg/services/userApi.dart';
import 'package:real_rpg/view/mainInterface/mainInterface.dart';
import 'package:real_rpg/view/userLogging/LoginPage.dart';

class Wrapper extends StatefulWidget {
  static const routeName = '/wrapper';

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  User currentUser;
  @override
  Widget build(BuildContext context) {
    final userApi = Provider.of<UserApi>(context);
    userApi.getAuthStateData().listen((User user) {
      setState(() {
        currentUser = user;
      });
    });
    if (currentUser == null) {
      return LoginPage();
    } else {
      if (currentUser.currentUserState == userState.LOGIN){
        return MainInterface();
      } else {
       return LoginPage();
      }
    }
  }
}
