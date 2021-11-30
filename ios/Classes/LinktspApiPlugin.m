#import "LinktspApiPlugin.h"
#if __has_include(<linktsp_api/linktsp_api-Swift.h>)
#import <linktsp_api/linktsp_api-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "linktsp_api-Swift.h"
#endif

@implementation LinktspApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLinktspApiPlugin registerWithRegistrar:registrar];
}
@end
