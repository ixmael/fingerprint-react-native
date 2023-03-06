#import <React/RCTLog.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RCTFingerprintMobile, NSObject)

// RCT_EXPORT_MODULE(FingerprintMobile);

RCT_EXTERN_METHOD(jajaja:(NSString)apiKey) {
  RCTLogInfo("analyze method with apikey %@", apiKey);
}

@end

/*s
@interface RCT_EXTERN_MODULE(RNFingerprintjsPro, NSObject)

RCT_EXTERN_METHOD(init:(NSString *)apiToken region:(NSString *)region endpoint:(NSString *)endpointUrl extendedResponseFormat:(BOOL)extendedResponseFormat pluginVersion:(NSString *)pluginVersion)
RCT_EXTERN_METHOD(getVisitorId:(NSDictionary *)tags linkedId:(NSString *)linkedId resolve:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(getVisitorData:(NSDictionary *)tags linkedId:(NSString *)linkedId resolve:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

@end
*/