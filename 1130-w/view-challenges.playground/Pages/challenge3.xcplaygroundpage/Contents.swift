import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 100)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .blue, .red]

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have the canvas's full `height` as well as a third of its `width`. Use the same colors as in the picture (they are already defined for you above in the `colors` array):

 ![Challenge 3](./challenge3.png "Challenge 3")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//// Method 2
// Green View
let greenView = UIView(frame: CGRect.zero)
greenView.translatesAutoresizingMaskIntoConstraints = false
greenView.backgroundColor = colors[0]
canvas.addSubview(greenView)

NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true

NSLayoutConstraint(item: greenView, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: 0).isActive = true

NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: 0).isActive = true

// Blue View
let blueView = UIView(frame: CGRect.zero)
blueView.translatesAutoresizingMaskIntoConstraints = false
blueView.backgroundColor = colors[1]
canvas.addSubview(blueView)

NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true

// in order for this constraint to show the toItem has to have a relative constraint as well.
NSLayoutConstraint(item: blueView, attribute: .leading, relatedBy: .equal, toItem: greenView, attribute: .trailing, multiplier: 1, constant: 0).isActive = true

// Red View
let redView = UIView(frame: CGRect.zero)
redView.translatesAutoresizingMaskIntoConstraints = false
redView.backgroundColor = colors[2]
canvas.addSubview(redView)

NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1 / 3, constant: 0).isActive = true

NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true

NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: blueView, attribute: .trailing, multiplier: 1, constant: 0).isActive = true

//// Method 1

//let width = canvas.frame.height
//let height = width
//let viewFrame = CGRect(x: 0, y: 0, width: width, height: height)
//
//let greenView = UIView(frame: viewFrame)
//greenView.backgroundColor = colors[0]
//
//let blueView = UIView(frame: viewFrame)
//blueView.backgroundColor = colors[1]
//blueView.center = canvas.center
//
//let redView = UIView(frame: viewFrame)
//redView.backgroundColor = colors[2]
//redView.center.x = canvas.center.x + width
//
//canvas.addSubview(greenView)
//canvas.addSubview(blueView)
//canvas.addSubview(redView)
