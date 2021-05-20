import 'package:flutter/material.dart';
import 'package:real_rpg/baseClass/responsive_utils.dart';
import 'package:real_rpg/baseClass/sizing_information.dart';


class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context,
      SizingInformation sizingInformation,
      ) builder;
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      double fontSize;
      var deviceWidth = MediaQuery.of(context).size.width;
      if (deviceWidth > 450) {
        fontSize = 17;
      } else if (deviceWidth > 370) {
        fontSize = 15;
      } else {
        fontSize = 10;
      }

      var mediaQuery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize:
        Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
        fontSize: fontSize
      );
      return builder(context, sizingInformation);
    });
  }
}