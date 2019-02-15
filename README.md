# WWTouchIdTesting
使用TouchID / FaceID的功能封裝

[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat)](https://developer.apple.com/swift/) [![Version](https://img.shields.io/cocoapods/v/WWSegmentControl.svg?style=flat)](http://cocoapods.org/pods/WWTouchIdTesting) [![Platform](https://img.shields.io/cocoapods/p/WWSegmentControl.svg?style=flat)](http://cocoapods.org/pods/WWTouchIdTesting) [![License](https://img.shields.io/cocoapods/l/WWSegmentControl.svg?style=flat)](http://cocoapods.org/pods/WWTouchIdTesting)

![使用TouchID / FaceID的功能封裝 (上傳至Cocoapods)](https://raw.githubusercontent.com/William-Weng/WWTouchIdTesting/master/WWTouchIdTesting.gif)

# 使用範例
![IBOutlet](https://raw.githubusercontent.com/William-Weng/WWTouchIdTesting/master/IBOutlet.png)

```swift
import UIKit
import WWTouchIdTesting

class ViewController: UIViewController {

    @IBOutlet weak var successLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// TouchID / FaceID 測試 (info.plist => NSFaceIDUsageDescription)
    @IBAction func touchIdAction(_ sender: UIButton) {
        
        let myBiometryType = WWTouchIdTesting.run(reason: "ID辨識測試") { policyResult in
            
            DispatchQueue.main.async {
                switch policyResult {
                case .failure(let error):
                    self.successLabel.backgroundColor = .red
                    print("error = \(error.debugDescription)")
                case .success(let isOK):
                    self.successLabel.backgroundColor = .green
                    print("isOK = \(isOK.debugDescription)")
                }
            }
        }
        
        successLabel.text = "\(myBiometryType.toString())"
    }
}
```