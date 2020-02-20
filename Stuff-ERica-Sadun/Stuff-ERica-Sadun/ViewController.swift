//
//  ViewController.swift
//  Stuff-ERica-Sadun
//
//  Created by Percy Ngan on 2/20/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

import UIKit

// Access Levels -- specifies who can see stuff

// public (open)
// internal <-- DEFAULT LEVEL
// private (fileprivate) <-- can only be seen inside the class (or inside the file)

// We use access levels to keep implementation details outside of the eyes of
// whatever types and programs are clients to our code

class ViewController: UIViewController {

	static let importantConstant = "foo" // static means it belongs to the class
	let otherConstant = "bar"	// this only means it belongs to the instances


	override func viewDidLoad() {
		super.viewDidLoad()
		// We are now somewhere else in the program
		ViewController.importantConstant
		// Class name followed by period followed by the constant symbol
		// I can use this _anywhere_

		// I can only access 'otherConstant' by creating an instance
		// of a viewController because it is an instance constant
		ViewController().otherConstant
		// This is bad because I don't want to start creating instances
		// places where I don't need them and all I want is to grab a string

		Double.pi // <-- this is a static member of Double

	}
	

}

