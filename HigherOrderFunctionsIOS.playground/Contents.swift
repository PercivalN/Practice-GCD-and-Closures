import UIKit


// Higher order function is nothing more than passing a function as an argument

// Write a function that adds 3 to a number.
// Write a function that adds 4 to a number.

func addThree(number: Int) -> Int {
	return number + 3
}

func addFour(number: Int) -> Int {
	return number + 4
}

// We assigned functions to a symbols and then
// we can call those symbols
// These are acting more like closures
let addThreeFunction = addThree
let addFourFunction = addFour

// Underscore (_) means no external label, basically it
// acts as the no label label, an unnamed parameter indicator.
// You are directing the compiler to not use a label.
// Underscore label - this is probably the closest name that we can
// have that people will understand without any context

// We can call the assignment of the function, but we lose the label
addThreeFunction(4)
addFourFunction(4)

// When you define a function with labels, you must
// call them with labels.
addThree(number: 4)

// Functions and closures are the same thing.
// Closures are functions without names.
// Functions are bound to a symbol and closures can be passed without being bound to a symbol.

// Backticks are used to indicate a code voice
// Code voice means that we are specifically intending
// people to understand as code.


// When we use higher order functions, we can pass:
//
// * a closure `{ (a: Int) in return a + 1`
// * a function name `addThree`
// * a symbol bound to a function `addThreeFunction

// I do not use a label when calling the function even
// if I pass a normal `function` to the function parameter
//func printMath(number: Int, function: (Int) -> Int) {
//	print("The result of applying the function to \(number) is \(function(number))")
//}

func foobias() { print("hi meera") }

// A function signature consists of parameters, their types, (any labels, because if it is a closure than it doesn't need labels), and the return type
func myFunc(number theNumber: Int) -> Int { return theNumber + 3 }
// printMath(number: 5, function: { (theNumber: Int) -> Int in return theNumber +3 })


// The keyword "in" takes over for the curly braces
// When movig from function to closure:

// 1. Get rid of the keyword func and its name
// 2. Strip the labels
// 3. Replace the outer curly braces with the word "in" between the signature and the implementation
// 4. The whole closure gets surrpunded by curly braces

// You can't use labels with closures
// That's why the labels get stripped and we call them without labels

// Higher Order functions - are just functions that are passed in as arguments
// This is just an example: the function is just passed in
func printMath(number: Int, function: (Int) -> Int) {
	print("The result of applying the function to \(number) is \(function(number))")
}

printMath(number: 5, function: addThree)
printMath(number: 5, function: addThreeFunction)
// 3rd way of doing this
printMath(number: 5, function: { number in return number + 3 })


{ (theNumber: Int) -> Int in return theNumber + 3 }

// This closure is fully specified
printMath(number: 5, function: { (number: Int) -> Int in return number + 3 })

// We now omit the return type. We can do this because the function (line 77) is typed (Int) -> (Int), This is called inference or type inference
// Because it unambiguously knows the type of the 'function' argument, it can infer nearly all of the signature
// We can also get rid of the type of the argument
// We can aslo get rid of the parentheses
printMath(number: 5, function: { number in return number + 3 })

// We will now get rid of the signature ENTIRELY
printMath(number: 5, function: { return $0 + 3 })

// $0 means the FIRST Shorthand Argument Name
// $1, $2, $3 and so forth.

// Use shorthand argument names RARELY and almost entirely restrict your
// use of them to in-line functional chaining, in other words, when you pass values
// from one function to another function to another function and so forth.

// Shorthand argument names are hard to read
// They don't have any context clues as to what they do (because their names usually say what they do

// GOOD SHORTHAND ARGUMENT USE
// No roles when comparing these things
let sortedNumbers = [1, 5, 3, 9, 2, 8, 7].sorted(by: { $0 > $1 })
sortedNumbers
let sortedNumbers2 = [1, 5, 3, 9, 2, 8, 7].sorted(by: >)
let sortedNumbers3 = [1, 5, 3, 9, 2, 8, 7].sorted(by: { (value1: Int, value2: Int) -> Bool in return value1 > value2
})


// TRAILING CLOSURES
// When you pass a closure as THE LAST ARGUMENT OF A FUNCTION, you can
// call that function using "trailing closure" syntax
// The reason this was developed was to allow swift functions to look as
// if they were built-in parts of the language.

/*
if a > b {
	...whatever...
}
*/

// Keys to trailing closures:
//
// * Drop the last keyword
// * Use braces
// * Only do this for things without side effects, perferably nothing that returns a value

printMath(number: 5, function: { return $0 + 3 })



// error: Cannot convert value of type '() -> ()' to expected argument type '(Int) -> Int'
// Swift is a type safe language and it will crash
// Mismatches between the type of the function passed
// and the type of the function it expects
// For example:
//printMath(number: 5, function: foobias)
