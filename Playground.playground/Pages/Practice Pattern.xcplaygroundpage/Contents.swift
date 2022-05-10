//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 30, color: .black)

// Set a scale
let scale = 30

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Begin writing your code below (you can remove the examples shown)

func drawParallelogram() {
    // DRAW PARALLELOGRAM

    // Draw bottom shape
    turtle.currentHeading()
    turtle.currentPosition()

    turtle.forward(steps: 2 * scale)
    //turtle.drawSelf()

    // Up 1/3
    turtle.left(by: 120)
    turtle.forward(steps: scale/3)
    //turtle.drawSelf()

    // Forward 2
    turtle.left(by: 60)
    turtle.forward(steps: 2 * scale)
    //turtle.drawSelf()

    // Down 1/3
    turtle.left(by: 120)
    turtle.forward(steps: scale/3)
    turtle.left(by: 60)

    turtle.currentHeading()
    turtle.currentPosition()

}


func sixPattern() {
    for _ in 1...6 {
        // draw parallelogram
        drawParallelogram()

        // GET INTO POSITION TO DRAW THE NEXT PARALLELOGRAM
        turtle.penUp()
        turtle.left(by: 120)
        turtle.forward(steps: scale/3)
        turtle.right(by: 120)
        turtle.penDown()
    }
}


func finalPattern() {
    turtle.currentPosition()
    turtle.currentHeading()
    sixPattern()
    turtle.drawSelf()
    turtle.currentPosition()
    turtle.currentHeading()

    // Lefttop sixPattern
    turtle.left(by: 60)
    turtle.forward(steps: 2 * scale)
    turtle.right(by: 180)
    sixPattern()
    turtle.drawSelf()

    // Middle sixPattern
    turtle.forward(steps: 2 * scale)
    turtle.left(by: 60)
    sixPattern()
    turtle.drawSelf()

    // Righttop
    turtle.forward(steps: 2 * scale)
    turtle.left(by: 60)
    sixPattern()
    turtle.drawSelf()

    // Right corner
    turtle.right(by: 60)
    turtle.forward(steps: 2 * scale)
    turtle.right(by: 60)
    sixPattern()
    turtle.drawSelf()
}

// Make repetition for the pattern
for _ in 1...3 {
    turtle.currentPosition()
    turtle.currentHeading()
    sixPattern()
    turtle.drawSelf()
    turtle.currentPosition()
    turtle.currentHeading()

    // Lefttop sixPattern
    turtle.left(by: 60)
    turtle.forward(steps: 2 * scale)
    turtle.right(by: 180)
    sixPattern()
    turtle.drawSelf()

    // Middle sixPattern
    turtle.forward(steps: 2 * scale)
    turtle.left(by: 60)
    sixPattern()
    turtle.drawSelf()

    // Righttop
    turtle.forward(steps: 2 * scale)
    turtle.left(by: 60)
    sixPattern()
    turtle.drawSelf()

    // Right corner
    turtle.right(by: 60)
    turtle.forward(steps: 2 * scale)
    turtle.right(by: 60)
    sixPattern()
    turtle.drawSelf()
}
