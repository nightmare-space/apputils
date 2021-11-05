#import "ApputilsPlugin.h"
#if __has_include(<apputils/apputils-Swift.h>)
#import <apputils/apputils-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "apputils-Swift.h"
#endif

@implementation ApputilsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftApputilsPlugin registerWithRegistrar:registrar];
}
@end
