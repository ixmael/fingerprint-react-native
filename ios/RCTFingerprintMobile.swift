import Fingerprint

@objc(RCTFingerprintMobile)
class RCTFingerprintMobile: NSObject {

  @objc(analyze:withResolver:withRejecter:)
  func analyze(apiKey: String, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
    print("swift", apiKey)
      
    /*
      Task.inits {
          do {
              let service = try FingerprintService(apiKey: apiKey)
              
          } catch {
              print("error", error as Any)
              reject(error)
          }
      }
    */
    let token = """
    {
      "bayonetID":"test"
    }
    """
    resolve(token)
  }
}
