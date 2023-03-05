@objc(FingerprintMobile)
class FingerprintMobile: NSObject {

  @objc(multiply:withB:withResolver:withRejecter:)
  func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    resolve(a*b)
  }

  @objc(analyze:withResolver:withRejecter:)
  func analyze(apiKey: String, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    let token = """
    {
      "bayonetID":"probando"
    }
    """
    resolve(token)
  }
}
