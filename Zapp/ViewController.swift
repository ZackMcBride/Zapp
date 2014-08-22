import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var view: UIView = UIView(frame: CGRectMake(50, 50, 300, 300))
        view.accessibilityLabel = "Hello"
        view.backgroundColor = UIColor.blueColor()
        self.view.addSubview(view)

        // This finds the view
        var caughtView = Expect.viewWithAccessibilityLabel("Hello")
        println("'Hello' found, so we get the view: \(caughtView?)")

        // This doesn't
        var uncaughtView = Expect.viewWithAccessibilityLabel("CDC")
        println("'CDC' Not found, so we get nil: \(uncaughtView?)")

    }
}

