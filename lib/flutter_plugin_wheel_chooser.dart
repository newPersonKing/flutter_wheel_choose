
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginWheelChooser {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_wheel_chooser');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
