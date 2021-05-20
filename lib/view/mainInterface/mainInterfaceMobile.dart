import 'package:flutter/material.dart';
import 'package:real_rpg/baseClass/base_model_widget.dart';

import 'mainInterfaceVM.dart';

class MainInterfaceMobile extends BaseModelWidget<MainInterfaceVM> {
  @override
  Widget build(BuildContext context, MainInterfaceVM model) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: height * 0.07,
          leadingWidth: width * 0.4,
          leading: FlatButton(
            child: Row(
              children: [
                Container(
                ),
                Container(
                  height: height * 0.04,
                  padding: EdgeInsets.only(left: width * 0.03, top: height * 0.005),
                  child: Text("Logout",
                    style: TextStyle(
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {
            },
          ),
          elevation: 3.0,
          backgroundColor: Colors.white,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(0.0),
            color: Colors.white,
            child: Container(
              child: Text("hi")
            )
          ),
        ));
  }
}
