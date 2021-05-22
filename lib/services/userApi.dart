import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserApi {
  static final UserApi _singleton = UserApi._internal();
  final String uid;

  factory UserApi() {
    return _singleton;
  }

  UserApi._internal({this.uid});

  StreamController<User> onAuthStateChangedController;

  void triggerAuthChange(User currentUser) async {
    onAuthStateChangedController.add(currentUser);
  }

  Stream<User> getAuthStateData() {
    void onListenAuthState() async {
    }

    onAuthStateChangedController =
        StreamController<User>.broadcast(onListen: onListenAuthState);

    return onAuthStateChangedController.stream;
  }

  Future<void> login() async {
    User thisUser = User();
    thisUser.currentUserState = userState.LOGIN;
    this.triggerAuthChange(thisUser);
  }

  Future<void> logout() async {
    User thisUser = User();
    thisUser.currentUserState = userState.LOGOUT;
    this.triggerAuthChange(thisUser);
  }
}

enum userState {
  LOGIN,
  LOGOUT,
}

class User {
  userState currentUserState;
}

class LogoutUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userApi = Provider.of<UserApi>(context);
    userApi.logout();
    return FutureBuilder(
        future: userApi.logout(),
        builder: (context, snapshot) {
          return BackToWrapper();
        });
  }
}

class BackToWrapper extends StatefulWidget {
  @override
  _BackToWrapperState createState() => _BackToWrapperState();
}

class _BackToWrapperState extends State<BackToWrapper> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 0),
      () => {
        Navigator.pushNamedAndRemoveUntil(context, 'wrapper', (route) => false)
      },
    );
  }

  Widget build(BuildContext context) {
    return Container();
  }
}
