#import "EsimPlugin.h"
#if __has_include(<esim/esim-Swift.h>)
#import <esim/esim-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "esim-Swift.h"
#endif

@implementation EsimPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEsimPlugin registerWithRegistrar:registrar];
}
@end
