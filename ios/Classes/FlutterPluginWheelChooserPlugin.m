#import "FlutterPluginWheelChooserPlugin.h"
#if __has_include(<flutter_plugin_wheel_chooser/flutter_plugin_wheel_chooser-Swift.h>)
#import <flutter_plugin_wheel_chooser/flutter_plugin_wheel_chooser-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_plugin_wheel_chooser-Swift.h"
#endif

@implementation FlutterPluginWheelChooserPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginWheelChooserPlugin registerWithRegistrar:registrar];
}
@end
