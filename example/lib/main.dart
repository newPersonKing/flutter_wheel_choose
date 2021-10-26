import 'package:flutter/material.dart';
import 'package:flutter_plugin_wheel_chooser/wheel_chooser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wheel Chooser'),
        ),
        body: ScrollConfiguration(
          behavior: OverScrollBehavior(),
          child: Center(
            child: Container(
              height: 100,
              child: WheelChooser(
                isInfinite: false,
                horizontal: false,
                onValueChanged: (s) => print(s),
                datas: ["a", "b", "c"],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
        return child;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return GlowingOverscrollIndicator(
          child: child,
          //不显示头部水波纹
          showLeading: false,
          //不显示尾部水波纹
          showTrailing: false,
          axisDirection: axisDirection,
          color: Theme.of(context).accentColor,
        );
    }
    return child;
  }
}
