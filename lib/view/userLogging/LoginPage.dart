import 'package:flutter/material.dart';
import 'package:real_rpg/baseClass/base_model_widget.dart';
import 'package:real_rpg/baseClass/base_widget.dart';
import 'package:real_rpg/baseClass/orientation_layout.dart';
import 'package:real_rpg/baseClass/screen_type_layout.dart';
import 'package:real_rpg/view/userLogging/LoginPageVM.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/Login';

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginPageVM>(
        viewModel: LoginPageVM(),
        onModelReady: (model) => model.initialise(),
        child: ScreenTypeLayout(
          mobile: OrientationLayout(portrait: (context) => LoginPageMobile()),
        ));
  }
}

class LoginPageMobile extends BaseModelWidget<LoginPageVM> {
  @override
  Widget build(BuildContext context, LoginPageVM model) {
    model.initPostBuild(context);
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(0.0),
                  color: Colors.white,
                  child: Container(child: Text("Login!"))),
              FlatButton(
                onPressed: () async {
                  await model.login(context);
                },
                child: Text("Press me to login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
