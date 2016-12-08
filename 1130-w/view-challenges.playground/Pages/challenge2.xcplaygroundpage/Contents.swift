
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
let length = canvas.frame.width / 3
let subviewSize = CGSize(width: length, height: length)
let origin = CGPoint.zero

let frame = CGRect(origin: origin, size: subviewSize)

let view = UIView(frame: frame)
view.backgroundColor = .red
canvas.addSubview(view)

let view2 = UIView(frame: frame)
view2.center = canvas.center
view2.backgroundColor = .red
canvas.addSubview(view2)


let view3 = UIView(frame: frame)
view3.backgroundColor = .red
view3.center.x =  2 * length + length / 2
view3.center.y = view3.center.x
canvas.addSubview(view3)
