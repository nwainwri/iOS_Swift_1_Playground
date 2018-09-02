//: [Previous](@previous)
/*:
 ## Array and Dictionaries
 
  Arrays and dictionaries allow us to store a collection of data. Create arrays and dictionaries using brackets '[]'. Remember that arrays hold a collection data based on an index, so we can access a value by writing the desired index within the brackets. Arrays also begin at index `0`. Dictionaries hold a key and a value, and we can access a value by writing the desired key within the brackets.
 */

// We can declare an array with square brackets syntax
var myNumberArray = [1,2,3]
print("The value at index 1 is: \(myNumberArray[1])")

// We can declare a dictionary with square brackets and key/value data
var myDictionary = ["Students" : 5, "Teachers" : 2]

// This is how we add a new key/value to our dictionary
myDictionary["Principal"] = 1

/*:
 - Experiment:
 Try creating an array and dictionary using `'let'` vs `'var'` then try adding something to them. What do you notice? For the array, you can use a method called 'append' to add something to it.
 */
// We can declare an array with square brackets syntax
var testMyNumberArray = [1,2,3]
print("The value at index 1 is: \(testMyNumberArray[1])")
testMyNumberArray.append(5)
print("The value at index 3 is: \(testMyNumberArray[3])")

let testerArray = [1,2,3]
// testerArray.append(5)
// exit status 1
// main.swift:8:1: error: cannot use mutating member on immutable value: 'testerArray' is a 'let' constant
// testerArray.append(5)
// ^~~~~~~~~~~
// main.swift:7:1: note: change 'let' to 'var' to make it mutable
// let testerArray = [1,2,3]
// ^~~
// var


// We can declare a dictionary with square brackets and key/value data
var testmyDictionary = ["Students" : 5, "Teachers" : 2]
// This is how we add a new key/value to our dictionary
testmyDictionary["Principal"] = 1
print("TEST: \(testmyDictionary)")

// We can declare a dictionary with square brackets and key/value data
let toastmyDictionary = ["Students" : 5, "Teachers" : 2]
// This is how we add a new key/value to our dictionary
// toastmyDictionary["Principal"] = 1
// print("TEST: \(toastmyDictionary)")

// exit status 1
// main.swift:10:32: error: cannot assign through subscript: 'toastmyDictionary' is a 'let' constant
// toastmyDictionary["Principal"] = 1
// ~~~~~~~~~~~~~~~~~              ^
// main.swift:8:1: note: change 'let' to 'var' to make it mutable
// let toastmyDictionary = ["Students" : 5, "Teachers" : 2]
// ^~~
// var







/*:
 - Experiment:
 Try creating an empty array with an explicit type `[type]`. What happens when you add a value that isn't the same type?
 */
var emptyDoubles: [Int] = []

//emptyDoubles.append(5.5)
//Cannot convert value of type 'Double' to expected argument type 'Int'


/*:
 - Experiment:
 Try creating an empty dictionary with an explicit type. `[keyType: valueType]`
 */
var emptyDictionary = [String: String]()


/*:
 - Experiment:
 Create an array with any values of your choice. Play around with accessing a value at a certain index. Then try playing with the following methods of an array and find out what they do:
 - append
 - insert
 - removeAt
 - removeAll
 - reverse
 - count
 */
var experimentTestMyNumberArray = [1,2,3]

experimentTestMyNumberArray.append(56) // adds 56 to end of array
print(experimentTestMyNumberArray)

experimentTestMyNumberArray.insert(34, at: 2) // inserts 34 at index 2
print(experimentTestMyNumberArray)

experimentTestMyNumberArray.remove(at: 1) // removes 2, from index 1
print(experimentTestMyNumberArray)

// experimentTestMyNumberArray.removeAll() // clears array
//print(experimentTestMyNumberArray)

experimentTestMyNumberArray.reverse() // revserse order
print(experimentTestMyNumberArray)

experimentTestMyNumberArray.count // returns int of total number of elements.
print(experimentTestMyNumberArray.count)


/*:
 - Experiment:
 Create a dictionary with any values of your choice. Play around with accessing a value by its key. Try keys using different case sensitivity, what happens? Then try playing with the following methods of a dictionary and find out what they do:
 - removeValue
 - isEmpty
 - count
 */
var thisIStestmyDictionary = ["Students" : 5, "Teachers" : 2, "Professors" : 5]

thisIStestmyDictionary.removeValue(forKey: "Students")

print(thisIStestmyDictionary)

thisIStestmyDictionary.isEmpty

thisIStestmyDictionary.count


/*:
 - Callout(Challenge):
    Declare a mutable array that is empty and holds `Strings`. On the next few lines, add the following names to the array: John, Karen, Jane
 
    Finally, print out each person's name from the array using their index and string interpolation
*/
var thisIsAnErray = [String]()

thisIsAnErray.append("John")

thisIsAnErray.append("Karen")

thisIsAnErray.append("Jane")



/*:
 - Callout(Challenge):
  Declare a mutable dictionary with the following names and their salaries
 
    John - $50000
 
    Jane - $70000
 
    Karen - $62000
 
    On the next line, add this last person's info: Bob - $45000
 */
var moneyDictionary = ["John" : 50000, "Jane" : 70000, "Karen" : 62000]

moneyDictionary["Bob"] = 45000

moneyDictionary


//: ALL DONE
//:-





//: [Next](@next)
