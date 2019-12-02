import Cocoa

// CASE 1: Closure without arguments
//let myClosure = {
//	print("Hello World!")
//}
//
//myClosure()

// 1. Closure w/o arguments is just one that has curly braces.
// --------------------------------------------------------------------------


// CASE 2: Has arguments
//let myClosure = { (name: String) in
//	print("Hello \(name)!")
//}
//
//myClosure("Percy")


// 1. The difference between function and closure is
// 		that the argument comes after the curly braces.
// 2. The "in" ends the argument section.
// 3. The 2nd difference is when calling the closure, one
//		doesn't have to use the argument label, i.e. "name".
// 4. The 3rd difference is that closures don't have an external
//		argument.
// 5. The closure is also declared as a constant.
// --------------------------------------------------------------------------


// CASE 3: Returning something
//let myClosure = { (name: String) -> String in
//	return "Hello \(name)!"
//}
//
//let string = myClosure("Percy")
//print(string)


// 1. Add an return after the argument.
// 2. If we return line 22, it will still give us Hello Percy!, but
// 		won't print it out.
// 3. We need to assign a constant to the closure and then print
//		the constant.
// --------------------------------------------------------------------------

// CASE 3: Function that takes a closure as its argument.
//		The closure doesn't have any arguments and returns nothing.

func runThis(someArgument: () -> ()) {
	closure()
}

let closure = {
	print(100)
}

runThis(someArgument: closure)

// 1. someArgument is the argument for the runThis function.
// 2. But it is also a closure that is called someArgument and the
//		syntax that makes it a closure is "() -> ()".
// 3. In the code section of the function, we run the closure by calling it with
//		empty parenthese, "closure".
// 4. And the closure is declared/created on line 56.
// 5. We run the function by calling it like a function, but we need to
// 		include the closure in the argument also.
// --------------------------------------------------------------------------

// CASE : Trailing closure syntax
