import Foundation
import UIKit

public class Execute {

    public enum testResult {
        case testWaiting,
             testFailed,
             testSucceeded
    }

    class func test(executionBlock:() -> (testResult), timeout: NSTimeInterval) -> NSError? {
        let startDate: NSDate = NSDate()
        var result: testResult = .testWaiting
        var error: NSError?
        while (result == .testWaiting && -startDate.timeIntervalSinceNow < timeout) {
            CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.1, 0);
        }

        if result == .testWaiting {
            error = NSError.errorWithDomain("Test failed after timeout", code: 0, userInfo: nil)
        }

        if result == .testFailed {
            error = NSError.errorWithDomain("No view found", code: 1, userInfo: nil)
        }

        return error
    }
}