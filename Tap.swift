import Foundation
import UIKit

public class UIActions {
    public class func viewWithAccessibilityLabel(label: String) {
        viewWithAccessiblityLabel(label, value: nil, traits: nil)
    }

    public class func viewWithAccessibilityLabel(label: String, traits: UIAccessibilityTraits?) {
        viewWithAccessiblityLabel(label, value: nil, traits: traits)
    }

    public class func viewWithAccessiblityLabel(label: String, value: String?, traits: UIAccessibilityTraits?) {
        var view: UIView? = UIApplication.sharedApplication().viewWithLabel(Label: label, Value: value, Traits: traits)
        //tap view
    }
}