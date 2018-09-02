//: [Previous](@previous)
/*:
 ## Class and Struct
 
 Classes are a way to group together common data together. You can think of them as a 'blueprint' for creating 'objects'. Structs are similar but they cannot be subclassed and any instance of them are passed by value NOT by reference.
 
 - Note:
 Classes and Structs will be defined in a single file and will be made available for other code to use. In Objective-C, you had to define your class and structs in a header file and an implementation file. In Swift, we've only got one file to worry about :).
 */
/*:
 Here we declare a class by using the `'class'` keyword and then the name of the class. Within the braces we are free to add properties and new methods for class.
 */
class ShapeClass {
  var numberOfSides = 0
  var name = "text"
  func description() -> String {
    return "A shape with \(numberOfSides) sides, and it's name \(name)"
  }
}
/*:
 The struct version looks the same except we use the keyword `'struct'`.
 */
struct ShapeStruct {
  var numberOfSides = 0
  func description() -> String {
    return "A shape with \(numberOfSides) sides."
  }
}

/*:
 - Experiment:
 Update the ShapeClass and add a new property 'name'. Also, update the description method to include the name when it prints.
 */


var thisItem = ShapeClass()

thisItem.name = "ROMBUS"
thisItem.numberOfSides = 6

thisItem.description()




/*:
 - Experiment:
 Try creating an instance of the ShapeClass. We can do this by writing the class name then putting parentheses '()' after the class name. Assign it to a declared variable and try setting the variables 'numberofSides' and 'name' and calling the 'description' method.
 */
var otherShape = ShapeClass()
otherShape.name = "BLOBER"
otherShape.numberOfSides = 55
otherShape.description()



/*:
 Our ShapeClass is looking good but it is missing something important. We need an initializer to set up the class when an instance is created. We are going to create another class very similar to ShapeClass but this time, we will add the initializer.
 */

class NamedShapeClass {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var TesterTester = NamedShapeClass(name: "thisname")
TesterTester.numberOfSides = 55

TesterTester.description()


/*:
 - Experiment:
 Add another initializer to our 'NamedShapeClass'. Have this initializer take in 'name' and 'numberOfSides' as its parameters. Then test it out by creating an instance of 'NamedShapeClass'.
 */
class NameyShapeyClass {
  var numberOfSides: Int = 0
  var name: String
  
  init(name: String, size: Int) {
    self.name = name
    self.numberOfSides = size
  }
  
  func description() -> String {
    return "A \(name) with \(numberOfSides) sides."
  }
}

var twissley = NameyShapeyClass(name: "thingythip", size: 555)
twissley.description()






/*:
 - Callout(Challenge):
 Let's make a new class named 'Square' and we will subclass 'NamedShapeClass'. This is already done for you below to showcase how to subclass.
 - add a new property for side length
 - create a new initializer that takes in side length and a name as parameters
 - create a new method called 'area' that calculates the area of the square ( side-length * side-length )
 - override the description method and print out a new description to indicate the side-length and number of sides for this square
 - test all your functions after you've finished
 */
//class NameyShapeyClass {
//  var numberOfSides: Int = 0
//  var name: String
//
//  init(name: String, size: Int) {
//    self.name = name
//    self.numberOfSides = size
//  }
//
//  func description() -> String {
//    return "A \(name) with \(numberOfSides) sides."
//  }
//}

class Square : NamedShapeClass {
  var sideLength: Int = 0
//  var numberOfSides: Int = 0
  
  convenience init(name: String, numberOfSides: Int, sideLength: Int) {
    self.init(name: name)
//    name = name
    self.sideLength = sideLength
//    numberOfSides = numberOfSides
    var area = sideLength * sideLength
    func description() -> String {
      return "A \(name) with a side length of \(sideLength) and number of sides \(numberOfSides)"
    }
  }
}

var letsSeeYouWork = Square(name: "HELL", numberOfSides: 44, sideLength: 3)

letsSeeYouWork.description()








/*:
 - Callout(Challenge):
 Follow the instructions to create your own Car class.
 
 - Create a class for Car. Add a `String` property called model.
 - Create a function called drive. Inside the function include a print statement that prints the model of the car you are driving.
 - Create a custom initalizer that requires an `String model` as an input.
 - Subclass Car and make a Toyota Class. `Override init()` and set the model to "Prius" inside the method.

 To Test:
 - Add an instance of a Car called nissan. Initialize it with model named "Rogue"
 - Add the drive() method to make sure it prints out "Rogue"
 - Add an instance of Toyota called toyota. Initialize it.
 - Add the drive() method to make sure it prints out "Prius"
 */
//class NameyShapeyClass {
//  var numberOfSides: Int = 0
//  var name: String
//
//  init(name: String, size: Int) {
//    self.name = name
//    self.numberOfSides = size
//  }
//
//  func description() -> String {
//    return "A \(name) with \(numberOfSides) sides."
//  }
//}

//// url: https://teamtreehouse.com/community/when-we-initialize-a-subclass-we-first-need-to-initialize-the-properties-in-our-base-class-then-call-the-super-class
//class Vehicle {
//  var numberOfWheels = 0
//  var description: String {
//    return "\(numberOfWheels) wheel(s)"
//  }
//}
//
//class Bicycle: Vehicle {
//  var airpump: Bool
//
//  override init() {
//    airpump = true
//    super.init()
//    numberOfWheels = 2
//  }
//}


class Car {
  var modelType: String
  init(model: String) {
    self.modelType = model
  }
  func drive() -> String {
    return "This Car is a \(modelType)"
  }
}

class Toyota: Car{
  
  init() {
    super.init(model: "Prius")
  }
}

var rogueCar = Car(model: "Rogue")
rogueCar.drive()

var cheapCar = Toyota()
cheapCar.drive()











/*:
 - Callout(Challenge):
 Earlier, we mentioned that classes are passed by reference and structs are passed by value. Let's try to clarify this with an example.
 \
First, create a Person class with a name property and a custom initializer that takes a name as its parameter, then uncomment 'Section A'. What do think will happen? What are the results?
\
Now create the same Person class but convert it to a struct. Uncomment 'Section B'. What do think will happen? What are the results?
*/
//// Implement Person class under here!


//struct Person {
//  var name: String
//  init(name: String) {
//    self.name = name
//
//  }
//}
//
//
//
//// Section A
//var firstPersonObject = Person(name: "Joe") // Person
//var secondPersonObject = firstPersonObject //Person
//secondPersonObject.name = "Jane"
//
//print(firstPersonObject.name) //Joe
//print(secondPersonObject.name) //Jane


//// Implement Person struct under here!

//class Person {
//  var name: String
//  init(name: String) {
//    self.name = name
//
//  }
//}




//// Section B
//var firstPersonStruct = Person(name: "Joe")
//var secondPersonStruct = firstPersonStruct
//secondPersonStruct.name = "Jane"
//
//print(firstPersonStruct.name) //Jane
//print(secondPersonStruct.name) //Jane





//: ALL DONE
//:-




//: [Next](@next)
