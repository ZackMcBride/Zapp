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

        Execute.test({ () -> (Execute.testResult) in
            var result: Execute.testResult = .testWaiting

            var view = UIApplication.sharedApplication().viewWithLabel(Label: label, Value: value, Traits: traits)

            if view != nil {
                result = .testSucceeded
            } else {
                result = .testWaiting
            }

            return result
            
        }, timeout: 4.0)

        return view;
    }
}