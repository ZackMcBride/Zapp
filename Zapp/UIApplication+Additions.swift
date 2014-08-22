import Foundation
import UIKit

extension UIApplication {

    func viewWithLabel(Label label: String, Value value: String?, Traits traits: UIAccessibilityTraits?) -> UIView? {
        for localWindow in windowsWithKeyWindow() {
            var newWindow = localWindow as UIWindow
            var element: UIView? = newWindow.rootViewController.view.viewWithAccessibilityLabel(label, value: value?, traits: traits?)

            if element != nil {
                return element
            }
        }
        return nil
    }

    func windowsWithKeyWindow() -> Array<UIWindow> {
        var localWindows: [UIWindow] = windows as [UIWindow]
        var localKeyWindow: UIWindow? = keyWindow

        var containsWindow = false
        if let localKeyWindow = localKeyWindow {
            for windowObject in localWindows {
                if windowObject == localKeyWindow {
                    containsWindow = true
                }
            }

            if containsWindow {
                localWindows.append(localKeyWindow)
            }
        }
        return localWindows
    }
}