//: [Previous](@previous)
/*:
 ## Protocols
 Protocols are a defined contract or blueprint that a class, struct or enum must follow.
 */
/*:
 Here we define a 'ShapeProtocol' where anything that conforms to it must provide a property of number of sides and a function called 'shapeDescription'
 */

////ORIGINAL
//protocol ShapeProtocol {
//    var numberOfSides: Int { get set }
//    func shapeDescription()
//}

/*:
 This 'Square' class conforms to the 'ShapeProtocol' and defines the number of sides for this shape and it has the shapeDescription method inside.
 */
//class Square: ShapeProtocol { // ORIGINAL
//    var numberOfSides: Int
//
//    init(){
//        self.numberOfSides = 4
//    }
//
//    func shapeDescription() {
//        print("This is a square")
//    }
//}

/*:
 - Experiment:
 Add a new function in our 'ShapeProtocol' that should calculate the area of its shape. Make sure you implement it in our 'Square' class as well.
 */
//
////EDITED
//protocol ShapeProtocol {
//  var numberOfSides: Int { get set }
//  func shapeDescription()
//  func shapeArea(_ side: Int, _ sideTwo: Int) -> Int
//}
//
//
//
//// EDITED
//class Square: ShapeProtocol {
//
//
//  var numberOfSides: Int
//
//  init(){
//    self.numberOfSides = 4
//  }
//
//  func shapeDescription() {
//    print("This is a square")
//  }
//
//  func shapeArea(_ side: Int, _ sideTwo: Int) -> Int{
//    return side * sideTwo
//  }
//}
//
//
//var squareOne = Square()
//squareOne.shapeArea(2, 2)




/*:
 - Experiment:
 Add a new property in our 'ShapeProtocol' of type String that indicates the colour of this shape.
 */

//
////EDITED
//protocol ShapeProtocol {
//  var numberOfSides: Int { get set }
//  var shapeColour: String { get set }
//  func shapeDescription()
//  func shapeArea(_ side: Int, _ sideTwo: Int) -> Int
//}
//
//
//
//// EDITED
//class Square: ShapeProtocol {
//  var shapeColour: String
//
//
//
//  var numberOfSides: Int
//
//  init(){
//    self.numberOfSides = 4
//    self.shapeColour = "BLUE"
//  }
//
//  func shapeDescription() {
//    print("This is a square")
//  }
//
//  func shapeArea(_ side: Int, _ sideTwo: Int) -> Int{
//    return side * sideTwo
//  }
//}
//
//
//var squareOne = Square()
//squareOne.shapeArea(2, 2)
//
//squareOne.shapeColour
//








/*:
 - Experiment:
 We can also declare a custom initializer within our 'ShapeProtocol' that any class must have present. Create an initializer that takes in a colour as a parameter.
 */


//EDITED
protocol ShapeProtocol {
  var numberOfSides: Int { get set }
  var shapeColour: String { get set }
  func shapeDescription()
  func shapeArea(_ side: Int, _ sideTwo: Int) -> Int
}



// EDITED
class Square: ShapeProtocol {
  var shapeColour: String
  
  
  
  var numberOfSides: Int
  
  init(colour: String){
    self.numberOfSides = 4
    self.shapeColour = colour
  }
  
  func shapeDescription() {
    print("This is a square")
  }
  
  func shapeArea(_ side: Int, _ sideTwo: Int) -> Int{
    return side * sideTwo
  }
}


var squareOne = Square(colour: "BLUERED")
squareOne.shapeArea(2, 2)

squareOne.shapeColour


/*:
 - Callout(Challenge):
 Define a person protocol with name, gender, age and add a custom initializer to set all the properties and a function to print a description of this person. Create a 'Student' class that conforms to this protocol and print the description of this student using its name.
 */

//Define a person protocol with name, gender, age and add a custom initializer to set all the properties and a
//function to print a description of this person. Create a 'Student' class that conforms to this protocol and
//print the description of this student using its name.

protocol Person {
  var name: String { get set }
  var gender: String { get set }
  var age: Int { get set }
  init(name: String, gender: String, age: Int)
  func description() -> String
}

class Student: Person {
  var name: String
  var gender: String
  var age: Int
  required init(name: String, gender: String, age: Int) {
    self.name = name
    self.gender = gender
    self.age = age
  }
  func description() -> String {
    return "My Name is \(name), I am a \(gender), and I am \(age) old."
  }
}

var nathan = Student(name: "Nathan", gender: "Male", age: 37)
nathan.description()

//*********
//
//UNSURE: if the way i did it, is what they mean? or do they just mean "nathan" spits out "description"?
//
//*********








//: UNSURE I DID THE ABOVE PART RIGHT
//:-












/*:
 ## Extensions
 Extensions are a way to add additional functions to an existing class, struct or enum.
 \
 For example, I can extend the `'Double'` class to add a function I may use very often such as squaring a number. ie: 4*4 = 16
 
 - Note:
 Extensions are like categories from Objective-C. Unlike Objective-C categories, Swift extensions do not have names.
 */

// This is declaring an extension on the Double class
extension Double {
  // This 'square' function takes its own value and multiples it by itself, then returns the new value
  func square() -> Double {
    return self * self
  }
}
var myDoubleValue = 5.0
var mySquaredDoubleValue = myDoubleValue.square()



/*:
 - Experiment:
 Try adding the 'square' function to the `Float` type
 */
//// This is declaring an extension on the Double class
//extension Double {
//  // This 'square' function takes its own value and multiples it by itself, then returns the new value
//  func square() -> Double {
//    return self * self
//  }
//}
//var myDoubleValue = 5.0
//var mySquaredDoubleValue = myDoubleValue.square()


extension Float {
  func square() -> Float {
    return self * self
  }
}
var myFloatValue:Float = 55.99998777

var myDoubledFloat = myFloatValue.square()


/*:
 We are going to add a few extensions to several classes that you could potentially use for your future projects to make things more convenient.
 */
/*:
 - Callout(Challenge):
 Create an extension on UIColor that converts hex represented colours to a UIColor to use. ex: #FFFFFF would give a UIColor of white (Hint: You can google the algorithm on how to convert hex values to a UIColor)
 */


//: YOU NEED TO IMPORT UIKIT FOR ANY UICOLOR ITEMS TO EVEN WORK


// URL : https://www.hackingwithswift.com/example-code/uicolor/how-to-convert-a-hex-color-to-a-uicolor
import UIKit

extension UIColor {
  public convenience init?(hexString: String) {
    let r, g, b, a: CGFloat
    
    if hexString.hasPrefix("#") {
      let start = hexString.index(hexString.startIndex, offsetBy: 1)
      let hexColor = String(hexString[start...])
      
      if hexColor.count == 8 {
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        
        if scanner.scanHexInt64(&hexNumber) {
          r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
          g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
          b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
          a = CGFloat(hexNumber & 0x000000ff) / 255
          
          self.init(red: r, green: g, blue: b, alpha: a)
          return
        }
      }
    }
    
    return nil
  }
}

let gold = UIColor(hexString: "#ffe700ff")
gold








/*:
 - Callout(Challenge):
 Create an extension on `String` called 'trim'. This will return a `String` that has the whitespace trimmed from the beginning and end. For example: "    hello there  " will return "hellothere"
 */

let myString = "  \t\t  Let's trim all the whitespace  \n \t  \n  "
var trimmedStringString = myString.replacingOccurrences(of: " ", with: "")
trimmedStringString.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
  func trim() -> String {
    var trimmyTrim = self
    trimmyTrim = trimmyTrim.trimmingCharacters(in: .whitespacesAndNewlines)
    trimmyTrim = trimmyTrim.replacingOccurrences(of: " ", with: "")
    return trimmyTrim
  }
}

myString.trim()





/*:
 - Callout(Challenge):
 Create an extension on String that checks if an email address has a valid format. You can make the rules as strict or as loose as you'd like. Rules can include verifying there are no spaces, there is a '@' present, etc.
 */
// URL:: https://stackoverflow.com/questions/29893917/how-to-use-validation-on-textfield-with-below-code-in-swift

extension String {
  func isValidEmail() -> Bool {
    // println("validate calendar: \(testStr)")
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: self)
  }
}


var testEmail = "nathanwainwright@gmail.com"

testEmail.isValidEmail() //true

var testEmailTwo = "N#than%an@g8.com"

testEmailTwo.isValidEmail() //false








/*:
 - Callout(Challenge):
 Create an extension on `Double` to add a function that converts the number of seconds into minutes and another function to hours. ex: Given 900 seconds, the minutes returned will be 15 minutes, and the hours returned would be 0.25 hours.
 */
extension Double {
  func secondsMinutes() -> Double{
    return self/60
  }
  func secondsHours() -> Double {
    return self/3600
  }
}

var testDoubleDouble = 900.0

testDoubleDouble.secondsHours() // 0.25hours

testDoubleDouble.secondsMinutes() // 15 mins










//: [Next](@next)
