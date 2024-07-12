import 'package:designpattern/Factory%20Design%20Pattern/2.dart';
import 'package:designpattern/Factory%20Design%20Pattern/3.dart';
import 'package:flutter/material.dart';

abstract class AbstractFactory {
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);
  Widget IndicatorBar();
}

class AbstractFactoryImpl implements AbstractFactory {
  @override
  Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform)
        .build(onPressed, Text(text));
  }

  @override
  Widget IndicatorBar() {
    return PlatformIndicator(TargetPlatform.iOS).progressIndicator();
  }
}
