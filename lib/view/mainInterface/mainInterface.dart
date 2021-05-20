import 'package:flutter/material.dart';
import 'package:real_rpg/baseClass/base_widget.dart';
import 'package:real_rpg/baseClass/orientation_layout.dart';
import 'package:real_rpg/baseClass/screen_type_layout.dart';
import 'package:real_rpg/view/mainInterface/mainInterfaceMobile.dart';

import 'mainInterfaceVM.dart';

class MainInterface extends StatelessWidget {
  static const routeName = '/MainInterface';

  @override
  Widget build(BuildContext context) {
    return BaseWidget<MainInterfaceVM>(
      viewModel: MainInterfaceVM(),
      onModelReady: (model) => model.initialise(),
      child: ScreenTypeLayout(
          mobile: OrientationLayout(
            portrait: (context) => MainInterfaceMobile()),
          )
    );
  }
}