
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//// Method 2
// view 1
let view1 = UIView(frame: CGRect.zero)
view1.translatesAutoresizingMaskIntoConstraints = false
view1.backgroundColor = .red
canvas.addSubview(view1)

NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

// needed?? origin is (0, 0)
NSLayoutConstraint(item: view1, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: 0).isActive = true

NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: 0).isActive = true

// view 2
let view2 = UIView(frame: CGRect.zero)
view2.translatesAutoresizingMaskIntoConstraints = false
view2.backgroundColor = .black
canvas.addSubview(view2)

NSLayoutConstraint(item: view2, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: view2, attribute: .centerX, relatedBy: .equal, toItem: canvas, attribute: .centerX, multiplier: 1, constant: 0).isActive = true

NSLayoutConstraint(item: view2, attribute: .centerY, relatedBy: .equal, toItem: canvas, attribute: .centerY, multiplier: 1, constant: 0).isActive = true

// View 3
let view3 = UIView(frame: CGRect.zero)
view3.translatesAutoresizingMaskIntoConstraints = false
view3.backgroundColor = .orange
canvas.addSubview(view3)

NSLayoutConstraint(item: view3, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: view3, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: view3, attribute: .trailing, relatedBy: .equal, toItem: canvas, attribute: .trailing, multiplier: 1, constant: 0).isActive = true

NSLayoutConstraint(item: view3, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: 0).isActive = true


//// Method 1
//let length = canvas.frame.width / 3
//let subviewSize = CGSize(width: length, height: length)
//let origin = CGPoint.zero
//
//let frame = CGRect(origin: origin, size: subviewSize)
//
//let view = UIView(frame: frame)
//view.backgroundColor = .red
//canvas.addSubview(view)
//
//let view2 = UIView(frame: frame)
//view2.center = canvas.center
//view2.backgroundColor = .red
//canvas.addSubview(view2)
//
//
//let view3 = UIView(frame: frame)
//view3.backgroundColor = .red
//view3.center.x =  2 * length + length / 2
//view3.center.y = view3.center.x
//canvas.addSubview(view3)
