import Foundation
import UIKit

extension UIAccessibilityElement {

    var view: UIView? {
        get {
            if !self.isKindOfClass(UIView) {
                return self.accessibilityContainer as? UIView
            }
            return nil
        }
    }
}