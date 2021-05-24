import 'package:flutter/material.dart';
import 'package:real_rpg/baseClass/base_model_widget.dart';
import 'package:real_rpg/baseClass/base_widget.dart';
import 'package:real_rpg/baseClass/orientation_layout.dart';
import 'package:real_rpg/baseClass/screen_type_layout.dart';

import 'addActionVM.dart';

class AddAction extends StatelessWidget {
  static const routeName = '/AddAction';

  @override
  Widget build(BuildContext context) {
    return BaseWidget<AddActionVM>(
        viewModel: AddActionVM(),
        onModelReady: (model) => model.initialise(),
        child: ScreenTypeLayout(
          mobile: OrientationLayout(portrait: (context) => AddActionMobile()),
        ));
  }
}

class AddActionMobile extends BaseModelWidget<AddActionVM> {
  @override
  Widget build(BuildContext context, AddActionVM model) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel")),
            FlatButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: Text("Insert one and go back")),
          ],
        ),
      ),
    );
  }
}
