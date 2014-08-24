import Foundation
import UIKit

extension UIView {

    func viewWithAccessibilityLabel(label: String, value: String?, traits: UIAccessibilityTraits?) -> UIView? {
        return viewMatchingBlock { (element: UIView) -> (Bool) in
            var labelsMatch = element.accessibilityLabel? == label
            var valuesMatch = element.accessibilityValue? == value?
            var traitsMatch = element.accessibilityTraits == traits? || element.accessibilityTraits == 0

            return labelsMatch == true && traitsMatch == true && valuesMatch == true
        }
    }

    func viewMatchingBlock(matchingBlock: (UIView) -> (Bool)) -> UIView? {
        if matchingBlock(self) {
            return self
        }

        for view: UIView in (subviews as [UIView]).reverse() {
            var matchFound = view.viewMatchingBlock(matchingBlock)
            if matchFound != false && matchFound != nil {
                return matchFound
            }
        }
        return nil
    }
}
