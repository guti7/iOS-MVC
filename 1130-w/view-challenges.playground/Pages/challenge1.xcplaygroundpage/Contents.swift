
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 200, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor
/*:
 **Task**: Add a `UIView` to the `canvas` that is half as wide and half as high as the `canvas`. This new `UIView` should be _centered_ on the canvas:
 
 ![Challenge 1](./challenge1.png "Challenge 1")

 1. Implement above task by setting the view's `frame` directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//// Method 1
//let redWidth = canvas.frame.width * 0.5
//let redFrame = CGRect(x: 0, y: 0, width: redWidth, height: redWidth)
//let redView = UIView(frame: redFrame)
//redView.backgroundColor = .red
//redView.center = canvas.center
//canvas.addSubview(redView)

// Method 2
let redView = UIView(frame: CGRect.zero)
redView.translatesAutoresizingMaskIntoConstraints = false
redView.backgroundColor = .red
canvas.addSubview(redView)


NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 0.5, constant: 0).isActive = true

NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .width,  multiplier: 0.5, constant: 0).isActive = true

NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: canvas, attribute: .centerX, multiplier: 1, constant: 0).isActive = true

NSLayoutConstraint(item: redView, attribute: .centerY, relatedBy: .equal, toItem: canvas, attribute: .centerY, multiplier: 1, constant: 0).isActive = true

