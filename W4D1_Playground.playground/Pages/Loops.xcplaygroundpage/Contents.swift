//: [Previous](@previous)
/*:
 ## For Loops

 For loops are a way to repeat a set of statements a certain number of times.
 
 - Note:
 The traditional 'C-style' loop does not exists in Swift anymore: `for ( int i = 0; i<10; i++ )`. Instead, you create for loops that perform your set of statements for each item in a range or collection.
 */

// This is our collection
let pets = ["dog", "cat", "pig", "parrot"]

// This is the for loop grabbing each item and performing actions
for pet in pets {
    print(pet)
}

/*:
 We can declare a for loop using a range with a lower bound and upper bound
 - Example: `2...5` or `2..<5`
 */

for i in 2...5 {
    print("My Current Index: \(i)")
}


//My Current Index: 2
//My Current Index: 3
//My Current Index: 4
//My Current Index: 5
/*:
 - Experiment:
 What's the difference between `2...5` vs `2..<5`?
 */

//My Current Index: 2
//My Current Index: 3
//My Current Index: 4

/*:
 - Experiment:
  Use a ranged for loop to search through the 'pets' array above for the word 'pig' and print out its index.
 */
for petsIndex in 0...3 {
  let pet = pets[petsIndex]
  if pet == "pig" {
    print("\(pet) \(petsIndex)")
  }
  
}

/*:
 - Experiment:
 Create an array of random numbers of your choosing then make a for loop that adds 1 to each number.
 */
var randoNumbs = [5,8,2,0,1,6,7,44]


print("Count is \(randoNumbs.count)")
for num in 0..<randoNumbs.count {
  print(num)
  let newNu = randoNumbs[num] + 1
  print(newNu)
  randoNumbs[num] = newNu
}
print(randoNumbs)


/*:
 - Experiment:
 Take a look at the example below. Modify the code so that it searches for both the largest and smallest number. Then print out the result.
 */
//let interestingNumbers = [
//  "Prime": [2, 3, 5, 7, 11, 13],
//  "Fibonacci": [1, 1, 2, 3, 5, 8],
//  "Square": [1, 4, 9, 16, 25],
//]
//var largest = 0
//var smallest = 1000
//for (_, numbers) in interestingNumbers {
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
//
//var numbersArr = [3,5,64,44,9,9]
//print(numbersArr.min() ?? 0)
//print(numbersArr.max() ?? 0)





/*:
 Hint: Use an `_` so that you can avoid making another unecessary variable for the iteration value.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
//var largest = 0
//for (_, numbers) in interestingNumbers {
//    for number in numbers {
//        if number > largest {
//            largest = number
//        }
//    }
//}
//print(largest)


/*:
 - Callout(Challenge):
 Given a number `N`, from 0 to `N`, add up all the odd numbers and print out the result.
 ie: N = 5, 1+3+5 = 9
 */


/*:
 - Callout(Challenge):
 Given the following array of numbers, determine the frequency of each number using a for loop.
 
 ie: [1, 2, 1, 3, 3, 1, 1, 1]
 
 1: Occurs 5 times
 
 2: Occurs 1 time
 
 3: Occurs 2 times
 */

let numberArray = [1, 4, 5, 5, 5, 3, 2, 1, 4, 2, 2, 2, 1]

//: [Next](@next)
