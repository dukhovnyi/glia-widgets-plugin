#import "GliaWidgetsPlugin.h"
#if __has_include(<glia_widgets/glia_widgets-Swift.h>)
#import <glia_widgets/glia_widgets-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "glia_widgets-Swift.h"
#endif

@implementation GliaWidgetsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGliaWidgetsPlugin registerWithRegistrar:registrar];
}
@end
