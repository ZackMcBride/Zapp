import Foundation
import UIKit

public class UIActions {
    public func viewWithAccessibilityLabel(label: String) {
        viewWithAccessiblityLabel(label, value: nil, traits: nil)
    }

    public func viewWithAccessibilityLabel(label: String, traits: UIAccessibilityTraits?) {
        viewWithAccessiblityLabel(label, value: nil, traits: traits)
    }

    public func viewWithAccessiblityLabel(label: String, value: String?, traits: UIAccessibilityTraits?) {
        UIApplication().viewWithLabel(Label: label, Value: value, Traits: traits)
    }
}