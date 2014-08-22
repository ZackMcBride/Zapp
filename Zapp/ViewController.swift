import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var view1: UIView = UIView(frame: CGRectMake(50, 50, 300, 300))
        view1.accessibilityLabel = "Hello"
        view1.backgroundColor = UIColor.blueColor()
        self.view.addSubview(view1)

        var view2: UIView = UIView(frame: CGRectMake(50, 50, 100, 100))
        view2.accessibilityLabel = "Cunt"
        view2.backgroundColor = UIColor.blueColor()
        view1.addSubview(view2)

        // This doesn't
        var uncaughtView = Expect.viewWithAccessibilityLabel("CDC")
        println("'CDC' Not found, so we get nil: \(uncaughtView?)")

        // This finds the view
        var caughtView = Expect.viewWithAccessibilityLabel("Hello")
        println("'Hello' found, so we get the view: \(caughtView?) with accessibilityLabel: \(caughtView?.accessibilityLabel)")

        // This finds the view
        var caughtNestedView = Expect.viewWithAccessibilityLabel("Cunt")
        println("'Cunt' found, so we get the view: \(caughtNestedView?) with accessibilityLabel: \(caughtNestedView?.accessibilityLabel)")
    }
}

