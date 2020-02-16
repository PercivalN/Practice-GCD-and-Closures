import UIKit

//func runThis(closure: () -> ()) {
//	closure()
//}
//
//let closure = {
//	print(1)
//	print(10)
//	print(100)
//}
//
//runThis(closure: closure)

//func runTime(closure: () -> ()) {
//	closure()
//}
//
//runTime() {
//	print(42)
//}

// -------------------------------------------------------
//let closure = { (a: Int, b: Int) -> Int in
//	return a + b
//}
//
//print(closure(2,3))

let closure = { (string: String, repeatCount: Int) -> String in

	 var text = ""
	for index in 1...repeatCount {
		text = ("This is the \(index) time \(string) is printed.")
		print(text)
	}
	return text
}
 closure("Hello World", 3)


