//: [Previous](@previous)
/*:
 ## Tuples
 Tuples are a type that can store multiple values into a group. You can also name each of the values if you choose to.
 */
// This is a tuple with a person's first name, last name and age.
var personTuple = ("Bob", "Smith", 23)

// We can access each value using their index
personTuple.0
personTuple.1
personTuple.2

// We can also consider naming each value for clarity
var namedPersonTuple = (firstName: "Jane", lastName: "Smith", age: 23)

// This way, we can also access the values using their name
namedPersonTuple.firstName
namedPersonTuple.lastName
namedPersonTuple.age

/*:
 - Experiment:
 Try creating your own tuple. Mix in different variable types and try mixing some parameters with names and some without. Does it still work?
 */

// We can also consider naming each value for clarity
var namedPersonTHISTuple = ("Jane", lastName: 4.555555, age: 23)

// This way, we can also access the values using their name
namedPersonTHISTuple.0
namedPersonTHISTuple.lastName
namedPersonTHISTuple.age





/*:
 - Experiment:
 Try nesting tuples within one another. Create a tuple and add a tuple as one of its items.
 */


// We can also consider naming each value for clarity
var namedPersonTHATTHISTuple = ("Jane", lastName: 4.555555, age: 23, namedPersonTuple)

// This way, we can also access the values using their name
namedPersonTHATTHISTuple.0
namedPersonTHATTHISTuple.lastName
namedPersonTHATTHISTuple.age
namedPersonTHATTHISTuple.3.age
namedPersonTHATTHISTuple.3.firstName
namedPersonTHATTHISTuple.3.lastName



/*:
 - Experiment:
 We took a look at tuple earlier during the 'Loops' section. Can you tell where it is being used? Experiment with the tuple names and even change up the interesting numbers to see what's possible.
 */

//let interestingNumbers = [
//    "Prime": [2, 3, 5, 7, 11, 13],
//    "Fibonacci": [1, 1, 2, 3, 5, 8],
//    "Square": [1, 4, 9, 16, 25],
//]
//for (kind, numbers) in interestingNumbers {
//
//}

let interestingNumbers = (
  This: [2, 3, 5, 7, 11, 13],
  Place: [1, 1, 2, 3, 5, 8],
  Square: [1, 4, 9, 16, 25]
)

interestingNumbers.Place[0]



//var largest = 0
//var smallest = 1000
//for (kind, numbers) in interestingNumbers {
//  for number in numbers {
//    if number > largest {
//      largest = number
//    }
//    if number < smallest {
//      smallest = number
//    }
//  }
//}
//print(largest)
//print(smallest)




/*:
 - Callout(Challenge):
 Create a function that takes three parameters, a name of type `String`, an age of type `Int`, and eligable of type `Bool`. The function returns a tuple of the name and age if eligable is true, otherwise, it will return `nil`.
 \
To test: call your new function with eligable true and false, and print the two values
 (Hint: Use optional return value and conditional unwrapping)
 */
func bloberTriple(name: String, age: Int, eligable: Bool) -> (String, Int)?{ // will allow func to return a tuple or a nil
  if eligable == true {
    let blobTuple = (name, age)
    return blobTuple
  } else {
    return nil
  }
}

var testTuple = bloberTriple(name: "nathan", age: 37, eligable: false)

var testTupledTwo = bloberTriple(name: "nathan", age: 37, eligable: true)

print(testTuple as Any)
print(testTupledTwo as Any)



/*:
 ## Enums
 Enums are related values defined by the user. An example to think of this are the months within a year. There are only 12 months and when you are programming, you'll need a way to represent this. We could potentially use a String for each month, but that could lead to spelling mistakes. So instead, we can define our own values that makes it obvious to you.
 
 - Note:
 Enums in Swift are *WAY* more powerful than in Objective-C. Enums in Swift can have methods and an assigned value that can be a string, a character, or a value of any integer or floating-point type.
 */

enum Months: Int{
  case January = 1
  case Feburary
  case March
  case April
  case May
  case June
  case July
  case August
  case September
  case October
  case November
  case December

  func abbreviatedStringForm() -> String {
    switch self {
    case .January:
      return "JAN"
    case .Feburary:
      return "FEB"
    case .March:
      return "MAR"
    case .April:
      return "APR"
    case .May:
      return "MAY"
    case .June:
      return "JUN"
    case .July:
      return "JUL"
    case .August:
      return "AUG"
    case .September:
      return "SEP"
    case .October:
      return "OCT"
    case .November:
      return "NOV"
    case .December:
      return "DEC"
    default:
      return ""
    } //end -- case
  } // end -- abbriv
  func apartMonths(first: Int, second: Int) -> Int {
    let firstOne = Months.RawValue(first)
    let secondOne = Months.RawValue(second)
    let difference = firstOne - secondOne
    return difference
  }
  func difference(month: Months) -> Int {
    return self.rawValue - month.rawValue
  }
}


////So you want change this method so that it take one argument and that argument shouldn't be an Int it should be the enum type (Months).
////---> months.january.difference(months.march)
////---> TESTME.difference(month: .April)
//TESTME.difference(month: .April)
var january = Months.January
january.difference(month: .December)



//: Now we can represents the months in our program with easy readiablity and minimal mistakes.
let januaryMonth = Months.January.rawValue
let marchMonth = Months.March


/*:
 - Experiment:
 Try adding '.rawValue' to the end of `Months.Januray` and `Months.March` above. What value did you get? How are these values assigned to the months?
 \
Try removing the '= 1' from the Months enum. Now what is different?
 */
// if you take  =1 from jan... starts index at 0

/*:
 - Experiment:
 Finish the rest of the months for our `Months` enum. Then take a look at `abbreviatedStringForm()` function. Complete this function so that it returns the abbreviated form of the desired month as a String. ie: calling `Months.January.abbreviatedStringForm()` returns "Jan".
 */
let testedJan = Months.January.abbreviatedStringForm()

/*:
 - Experiment:
 Write a function within the enum that compares two months and determines how many months are they apart. For example: Comparing January to March would return to me '2', because January and March are two months apart.
 */

var tryThis = Months.January.apartMonths(first: 1, second: 4)







/*:
 - Callout(Challenge):
 Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
*/




////Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
//// got this from :: https://www.weheartswift.com/tuples-enums//
//enum HandShape {
//  case rock
//  case paper
//  case scissors
//}
//
//enum MatchResult {
//  case win
//  case draw
//  case lose
//}
//
//func match(_ first: HandShape, _ second: HandShape) -> MatchResult {
//  if first == second {
//    return .draw
//  }
//  if first == .rock && second == .scissors {
//    print("rock beats scissors")
//    return .win
//  }
//  if first == .paper && second == .rock {
//        print("paper beats rock")
//    return .win
//  }
//  if first == .scissors && second == .paper {
//    print("Scissors beats Paper")
//    return .win
//  }
//  return .lose
//}
//
//func whichOne(_ hand: HandShape) {
//  if hand == .paper {
//    print("✋")
//  } else if hand == .rock {
//    print("👊")
//  } else if hand == .scissors {
//    print("✌️")
//  } else {
//    //NOTHING
//  }
//}
//
//match(.rock, .scissors) //win
//match(.paper, .rock) //win
//match(.scissors, .rock) //lose
//whichOne(.paper)
//whichOne(.rock)
//whichOne(.scissors)


//Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
// modified things I found above.
enum HandShape {
  case rock
  case paper
  case scissors
  enum MatchResult {
    case win
    case draw
    case lose
  }
  func match(_ second: HandShape) -> MatchResult {
    if self == second {
      return .draw
    }
    if self == .rock && second == .scissors {
      print("rock beats scissors")
      return .win
    }
    if self == .paper && second == .rock {
      print("paper beats rock")
      return .win
    }
    if self == .scissors && second == .paper {
      print("Scissors beats Paper")
      return .win
    }
    return .lose
  }
  func whichOne() {
    if self == .paper {
      print("✋")
    } else if self == .rock {
      print("👊")
    } else if self == .scissors {
      print("✌️")
    } else {
      //NOTHING
    }
  }
}

HandShape.rock.match(.scissors) // returns "win", as rock beats scissors
HandShape.rock.match(.paper) // returns lose, paper beats rock
HandShape.rock.match(.rock) // draw

HandShape.paper.match(.paper) //draw
HandShape.paper.match(.rock) //win
HandShape.paper.match(.scissors) //lose

HandShape.scissors.match(.scissors) //draw
HandShape.scissors.match(.paper) //win
HandShape.scissors.match(.rock) //lose


HandShape.rock.whichOne()  // returns "Fist/Rock" Emoji
HandShape.scissors.whichOne() // returns "scissors/peace" Emoji
HandShape.paper.whichOne() // returns "palm/paper" Emoji




//: ALL DONE
//:-















































//: [Next](@next)
