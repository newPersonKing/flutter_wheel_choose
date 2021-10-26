import Flutter
import UIKit

public class SwiftFlutterPluginWheelChooserPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin_wheel_chooser", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginWheelChooserPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
