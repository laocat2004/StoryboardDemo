import UIKit
import DATAStack

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let dataStack = DATAStack(modelName: "Project")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let navigationController = self.window!.rootViewController as! UINavigationController
        let controller = navigationController.topViewController as! MasterViewController
        controller.dataStack = self.dataStack

        return true
    }
}

