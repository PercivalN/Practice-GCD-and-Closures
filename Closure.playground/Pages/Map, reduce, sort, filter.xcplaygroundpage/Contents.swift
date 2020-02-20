

import Foundation

var names = ["Vincent", "Spencer", "Erica", "Marilyn"]

names.sort { (string1, string2) -> Bool in
	let reversed1 = String(string1.reversed())
	let reversed2 = String(string2.reversed())


	if reversed1 <= reversed2 {
		return true
	} else {
		return false
	}
}

print(names)

// -------------------------------------------------------
// This is the shortened closure method

//var names = ["Vincent", "Spencer", "Erica", "Marilyn"]
//
//names.sort { String($0.reversed()) <= String($1.reversed()) }
//
//print(names)


// -------------------------------------------------------
// This is the filter function.
//var names = ["Vincent", "Spencer", "Erica", "Marilyn", "Regine", "Irena", "Bob"]
//
//let shortNames = names.filter { $0.count < 4 }
//
//print(shortNames)


// -------------------------------------------------------
// This is the map function. It lets one replace every member of the array with something else.

//var names = ["Vincent", "Spencer", "Erica", "Marilyn", "Regine", "Irena", "Bob"]

// This is a regular algorithm and doesn't use the map function
//var lengths: [Int] = []
//for name in names {
//	lengths.append(name.count)
//}

// This is the maps function
//let lengths = names.map { (name) -> Int in
//	return name.count
//}



// This is the simplified version of the maps function
// The compiler is smart enough to infer that the return type should be Int because it needs to return the count.
//let lengths = names.map { $0.count }
//
//print(lengths)

// -------------------------------------------------------

//var names = ["Vincent", "Spencer", "Erica", "Marilyn", "Regine", "Irena", "Bob"]
//
//var lengths: [Int] = []
//for name in names {
//	lengths.append(name.count)
//}
//
//print(lengths)


// -------------------------------------------------------
// Compact map looks at the values to see if it is possible to "map"/convert to another type and if not leave that element out.

//let strings = ["Five", "6", "123", "Forty-Five"]
//
//let numbers = strings.compactMap { Int($0) }
//
//print(numbers)


// -------------------------------------------------------
// Reduce function

let ages: [Double] = [10, 42, 27, 63, 45, 33, 101]

// This is the normal algorithm that does the same as the reduce closure
//var sum = 0
//for age in ages {
//	sum += age
//}
//let avg = Double(sum) / Double(ages.count)

// 0.0 is the initial value
// memo acts like sum in the previous example
// value is the value that we add to memo
// This only gives us the sum
//let sum = ages.reduce(0.0) { $0 + $1 }
//
//
//let avg = sum / Double(ages.count)

// This is a very abbreviated way to write a reduce function, but not the best way to write it because it is not readable and others will not recognize it instantly whereas the regular algorithm is.
let avg = ages.reduce(0.0, +) / Double(ages.count)

print(avg)

// -------------------------------------------------------
/*
func myMap(array: [String], closure: (String) -> String) -> [String] {
	var result = [String]()
	for string in array {
		let newString = closure(string)
		result.append(newString)
	}
	return result
}

let names = ["Percy", "Erica", "Marilyn", "Wilma"]
*/

// This is the long version of the closure
//let reversedNames = myMap(array: names) { (string) -> String in
//	return String(string.reversed())
//}

// This is the abbreviated version
/*
let reversedNames = myMap(array: names) { String($0.reversed()) }

print(reversedNames)
*/

// -------------------------------------------------------
// Write your own version of fileter called myFilter(). It shuld take an array of strings and return an array of strings.
