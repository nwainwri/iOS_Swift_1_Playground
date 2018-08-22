//: [Previous](@previous)
/*:
 ## Functions

 A function is a set of statements grouped together to perform a task. Functions can take in zero or many parameters and the function can also return a value or return nothing. Below you can see the different structures of a function of how you can write them.
 */
/*:
 - Callout(Structure): This function structure does not include any parameters and does not return anything
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses
 - Open and close braces
*/
var testStringForStuff = "hello here"


func sayHello(){
    print("Hello")
}




/*:
 - Callout(Structure): This function takes in a single parameter and does not return any values
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - **Open and close parentheses with a parameter called 'toPerson' of type `String`**
 - Open and close braces
 */
//func sayHello(toPerson: String){
//    print("Hello \(toPerson)")
//}
//
//sayHello(toPerson: testStringForStuff)

// Ambiguous use of 'sayHello(toPerson:)'
/*:
 - Callout(Structure): This function takes in a single parameter and returns a value of type `String`
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses with a parameter called 'toPerson' of type `String`
 - A return value of type `String` represented by the `->`
 - Open and close braces
 */
//func sayHello(toPerson: String) -> String{
//    return "Hello \(toPerson)"
//}
//
//
//var THISthing = sayHello(toPerson: testStringForStuff)

// error Ambiguous use of 'sayHello(toPerson:)'
/*:
 - Experiment:
 Try calling all of the functions above. They all have the same function name, but the compiler doesn't complain. Can you think of why this might be?
 */





/*:
 - Experiment:
 Try creating your own function that accepts two parameters of any type you choose. Have the function print out the two parameters and test your function.
 */

var test = "here be dragons"
var test2 = "there be elves"

func hereBeTwoStrings(thisOne: String, thatOne: String) {
  
  print("ALL TOGETHER NOW: \(thisOne) " + "and \(thatOne)")
  
}
hereBeTwoStrings(thisOne: test, thatOne: test2)



/*:
 - Callout(Challenge):
 Create four separate functions to add, subtract, multiple, and divide with two parameters given to it and returns a number result. Try testing each one afterwards.
 
 */
var firstNum = 99
var secondNum = 88

func addNums(firstOne: Int, secondOne: Int) {
  var answer = 0;
  answer = firstOne + secondOne
  print("\(answer)")
}
addNums(firstOne: firstNum, secondOne: secondNum)

func subNum(firstOne: Int, secondOne: Int) {
  var answer = 0;
  answer = firstOne - secondOne
  print("\(answer)")
}
subNum(firstOne: firstNum, secondOne: secondNum)

func multiNum(firstOne: Int, secondOne: Int) {
    var answer = 0;
    answer = firstOne * secondOne
    print("\(answer)")
}
multiNum(firstOne: firstNum, secondOne: secondNum)

func diviNum(firstOne: Int, secondOne: Int) {
  var answer = 0;
  answer = firstOne / secondOne
  print("\(answer)")
}
diviNum(firstOne: firstNum, secondOne: secondNum)





/*:
 - Callout(Challenge):
 Create your own 'reverse' function that takes in an array of Int, reverses the order of the array, and returns the newly reversed array of Int. The array class has its own 'reverse' method, but do not use it for this challenge.
 */
//var numberArray = [1,2,3,4,5,6,7,8,9]
//let newArray = numberArray.reversed();
//for i in (0..<numberArray.count).reversed() {
//  var tempNum = numberArray.popLast()
//  var newArray
//}

// for loop
// grab last number
// append to a new array
// REMOVE last number
// until array 'done' (count?)
// print reversed array

/// how?




/*:
 ## Closures
 
 Closures are also a set of statements grouped together but the closure can be stored and passed around and executed somewhere else.
 
 - Note:
 A closure in Swift is similar to blocks in Objective-C
 */
/*:
 For example, the UIViewController has a 'dismiss' method.
 
 `func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)`
 
 The 'completion' part of it is the completion handler which is a closure. It will execute that block of code when the dismiss action has completed.
 */
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosure'.
 
 - Start with the open braces
 - The first '()' indicates it takes no parameters
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosure = { () -> () in
    print("Hello from closure")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureToPerson'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureToPerson = { (name: String) -> () in
    print("Hello \(name)")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureWithReturn'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The `'String'` after the arrow indicates it returns a `String` type
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureWithReturn = { (name: String) -> String in
  // do logic
    return "Hello \(name)"
}
/*:
 - Experiment:
 Try calling all of the closures above. What do you notice that is different from calling a function?
 */

sayHelloClosure() // TAKES NOTHING

sayHelloClosureToPerson("TEST") // TAKES ONE STRING

var newThingString = sayHelloClosureWithReturn("TEST TEST") // takes on string?
print(newThingString)





/*:
 - Experiment:
 Try creating your own closure that accepts two parameters of any type you choose. Have the closure print out the two parameters and test your closure.
 */
var thisIsMahTest = { (name:String, secondName:String) -> String in
  // do logic
  return "Hello \(name)" + "and \(secondName)"
}

var imsilly = thisIsMahTest(test,test2)

/*:
 - Experiment:
 Declare a variable with an explicit closure type: `(String) -> (String)`. This closure type says it takes one parameter of type String and returns a variable of type String.
 */


var thisIsMahTest2 = { (name:String, secondName:String) -> String in
  // do logic
  return "OTHER OUT \(name)" + "and \(secondName)"
}


/*:
 - Callout(Challenge):
 Create a closure with at least two parameters of your choice and decide whether or not it returns anything. Then create a function that takes in your closure as a parameter and one additional parameter of your choice.
 */
//: [Next](@next)
func testThisNow(thishere: (String,String) -> String){
  print(thishere("string 1", "some other string"))
}

testThisNow(thishere: thisIsMahTest2)






