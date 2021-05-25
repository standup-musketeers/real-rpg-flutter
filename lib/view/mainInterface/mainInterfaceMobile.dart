import 'package:flutter/material.dart';
import 'package:real_rpg/baseClass/base_model_widget.dart';

import 'addAction/addAction.dart';
import 'mainInterfaceVM.dart';

class MainInterfaceMobile extends BaseModelWidget<MainInterfaceVM> {
  @override
  Widget build(BuildContext context, MainInterfaceVM model) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    Size gameSize = Size(width, height);
    model.initPostBuild(context, gameSize);
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: height * 0.05,
          leadingWidth: width * 0.4,
          leading: TextButton(
            child: Row(
              children: [
                Container(
                  height: height * 0.04,
                  padding:
                      EdgeInsets.only(left: width * 0.03, top: height * 0.005),
                  child: Text(
                    "Logout",
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
            onPressed: () async {
              await model.logout();
            },
          ),
          elevation: 3.0,
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.8,
                width: width,
                child: model.gameHome.widget,
              ),
              Container(
                height: height * 0.2,
                width: width,
                margin: const EdgeInsets.all(0.0),
                color: Colors.black54,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: height * 0.12,
                            width: width * 0.3,
                            color: Colors.brown,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddAction(),
                                  ),
                                );
                              },
                              child: Text(
                                "Button A",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.12,
                            width: width * 0.3,
                            color: Colors.brown,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddAction(),
                                  ),
                                );
                              },
                              child: Text(
                                "Button B",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.12,
                            width: width * 0.3,
                            color: Colors.brown,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddAction(),
                                  ),
                                );
                              },
                              child: Text(
                                "Button C",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        )));
  }
}
