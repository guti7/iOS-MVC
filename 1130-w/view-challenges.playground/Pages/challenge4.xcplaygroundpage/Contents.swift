import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .cyan, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let width = canvas.frame.width / 3
let height = canvas.frame.height / 3
let frame = CGRect(x: 0, y: 0, width: width, height: height)

// first row
let greenView = UIView(frame: frame)
greenView.backgroundColor = colors[0]

let grayView = UIView(frame: frame)
grayView.backgroundColor = colors[1]
grayView.center.x += width

let purpleView = UIView(frame: frame)
purpleView.backgroundColor = colors[2]
purpleView.center.x += 2 * width

canvas.addSubview(greenView)
canvas.addSubview(grayView)
canvas.addSubview(purpleView)

// second row
let yellowView = UIView(frame: frame)
yellowView.backgroundColor = colors[3]
yellowView.center.y += height

let redView = UIView(frame: frame)
redView.backgroundColor = colors[4]
redView.center.x += width
redView.center.y += height

let orangeView = UIView(frame: frame)
orangeView.backgroundColor = colors[5]
orangeView.center.x += 2 * width
orangeView.center.y += height

canvas.addSubview(yellowView)
canvas.addSubview(redView)
canvas.addSubview(orangeView)

// third row
// ligthgray, cyan, blue

let ligthGrayView = UIView(frame: frame)
ligthGrayView.backgroundColor = colors[6]
ligthGrayView.center.y += 2 * height

let cyanView = UIView(frame: frame)
cyanView.backgroundColor = colors[7]
cyanView.center.x += width
cyanView.center.y += 2 * height

let blueView = UIView(frame: frame)
blueView.backgroundColor = colors[8]
blueView.center.x += 2 * width
blueView.center.y += 2 * height

canvas.addSubview(ligthGrayView)
canvas.addSubview(cyanView)
canvas.addSubview(blueView)
