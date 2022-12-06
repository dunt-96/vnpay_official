#import "VnpayOfficialPlugin.h"
#if __has_include(<vnpay_official/vnpay_official-Swift.h>)
#import <vnpay_official/vnpay_official-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vnpay_official-Swift.h"
#endif

@implementation VnpayOfficialPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVnpayOfficialPlugin registerWithRegistrar:registrar];
}
@end
