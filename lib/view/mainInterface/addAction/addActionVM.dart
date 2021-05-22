import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_rpg/services/userApi.dart';

class AddActionVM extends ChangeNotifier {
  UserApi userApi;
  BuildContext context;

  void initialise() async {
    notifyListeners();
  }

  void initPostBuild(BuildContext context) {
    this.userApi = Provider.of<UserApi>(context);
    this.context = context;
  }

  Future<void> logout() async {
    await this.userApi.logout();
  }
}
