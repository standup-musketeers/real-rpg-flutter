import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_rpg/services/userApi.dart';

import 'gameHome/gameHome.dart';

class MainInterfaceVM extends ChangeNotifier {
  UserApi userApi;
  BuildContext context;
  GameHome gameHome;
  void initialise() async {
    notifyListeners();
  }

  void initPostBuild(BuildContext context, Size screenSize) {
    this.userApi = Provider.of<UserApi>(context);
    this.context = context;
    gameHome = GameHome(screenSize);
    gameHome.initialize();
  }

  Future<void> logout() async {
    await this.userApi.logout();
  }
}
