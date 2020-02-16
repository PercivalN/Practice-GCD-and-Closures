

import Foundation

//var names = ["Vincent", "Spencer", "Erica", "Marilyn"]
//
//names.sort { (string1, string2) -> Bool in
//	let reversed1 = String(string1.reversed())
//	let reversed2 = String(string2.reversed())
//
//	if reversed1 <= reversed2 {
//		return true
//	} else {
//		return false
//	}
//}
//
//print(names)

// -------------------------------------------------------
// This is the shortened closure method

//var names = ["Vincent", "Spencer", "Erica", "Marilyn"]
//
//names.sort { String($0.reversed()) <= String($1.reversed()) }
//
//print(names)


// -------------------------------------------------------
// This is the filter function.
var names = ["Vincent", "Spencer", "Erica", "Marilyn", "Regine", "Irena", "Bob"]

let shortNames = names.filter { $0.count < 4 }

print(shortNames)
