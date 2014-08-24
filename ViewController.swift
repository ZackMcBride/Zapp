import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var view1: UIView = UIView(frame: CGRectMake(50, 50, 300, 300))
        view1.accessibilityLabel = "Hello"
        view1.backgroundColor = UIColor.blueColor()
        self.view.addSubview(view1)

        var nestedView: UIView = UIView(frame: CGRectMake(50, 50, 100, 100))
        nestedView.accessibilityLabel = "Cunt"
        nestedView.backgroundColor = UIColor.blueColor()
        view1.addSubview(nestedView)

        // This doesn't find the view
        var uncaughtView = Expect.viewWithAccessibilityLabel("CDC")
        println("'CDC' Not found, so we get nil: \(uncaughtView?)")

        // This finds the view
        var caughtView = Expect.viewWithAccessibilityLabel("Hello")
        println("'Hello' found, so we get the view: \(caughtView?) with accessibilityLabel: \(caughtView?.accessibilityLabel)")

        // This finds the nested view
        var caughtNestedView = Expect.viewWithAccessibilityLabel("Cunt")
        println("'Cunt' found, so we get the view: \(caughtNestedView?) with accessibilityLabel: \(caughtNestedView?.accessibilityLabel)")

    }
}