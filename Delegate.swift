import UIKit

final class Delegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication, willFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(named: "AccentColor")!
        UIScrollView.appearance().keyboardDismissMode = .interactive
        return true
    }
}
