import Foundation
import UIKit

public class Expect {
    public class func viewWithAccessibilityLabel(label: String) -> UIView? {
        return viewWithAccessibilityLabel(label, value: nil, traits: nil)?
    }

    public class func viewWithAccessibilityLabel(label: String, traits: UIAccessibilityTraits?) -> UIView? {
        return viewWithAccessibilityLabel(label, value: nil, traits: traits)?
    }

    public class func viewWithAccessibilityLabel(label: String, value: String?, traits: UIAccessibilityTraits?) -> UIView? {
        var view: UIView? = UIApplication.sharedApplication().viewWithLabel(Label: label, Value: value, Traits: traits)
        return view?
    }
}