import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformIndicator {
  Widget progressIndicator();
  factory PlatformIndicator(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidIndicator();
      case TargetPlatform.iOS:
        return IOSIndicator();
      default:
        return AndroidIndicator();
    }
  }
}

class IOSIndicator implements PlatformIndicator {
  @override
  Widget progressIndicator() {
    return CupertinoActivityIndicator();
  }
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Widget progressIndicator() {
    return const CircularProgressIndicator();
  }
}
