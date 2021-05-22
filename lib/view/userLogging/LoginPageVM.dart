import 'package:flutter/material.dart';
import 'package:real_rpg/services/userApi.dart';
import 'package:provider/provider.dart';

class LoginPageVM extends ChangeNotifier {
  UserApi userApi;
  BuildContext context;
  void initialise() async {
    notifyListeners();
  }

  void initPostBuild(BuildContext context) {
    this.userApi = Provider.of<UserApi>(context);
    this.context = context;
  }

  Future<void> login(BuildContext context) async {
    await this.userApi.login();
  }
}