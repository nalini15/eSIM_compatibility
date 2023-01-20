import Flutter
import UIKit
import CoreTelephony

public class SwiftEsimPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
      let channel = FlutterMethodChannel(name: "esimdemo", binaryMessenger: registrar.messenger())
      let instance = SwiftEsimPlugin()
      registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if(call.method == "isEsim"){
               self.checkESimCompatibility(result: result);
        }
    }

       private func checkESimCompatibility(result: FlutterResult){
            if #available(iOS 12, *) {
                 let plan = CTCellularPlanProvisioning()
                let esim_support = plan.supportsCellularPlan()
                if esim_support {
                    print("Esim supported.......")
                    result(Int(1))
                } else {
                    print("Esim not supported.......")
                    result(Int(-1))
                }

            } else {
                print("response -2")
                result(Int(-2))
            }
       }
}
