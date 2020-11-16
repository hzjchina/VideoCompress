#import "VideoCompressPlugin.h"
#if __has_include(<video_compress/video_compress-Swift.h>)
#import <video_compress/video_compress-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "video_compress-Swift.h"
#endif


@implementation VideoCompressPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVideoCompressPlugin registerWithRegistrar:registrar];
}
@end