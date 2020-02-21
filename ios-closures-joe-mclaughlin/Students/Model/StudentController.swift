//
//  StudentController.swift
//  Students
//
//  Created by Ben Gohlke on 6/17/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import Foundation

class StudentController {
    
    private var persistentFileURL: URL? {
        guard let filePath = Bundle.main.path(forResource: "students", ofType: "json") else { return nil }
        return URL(fileURLWithPath: filePath)
    }

	// Sets up a queue that is called "studentQueue"
	// .concurrent allows this queue to execute the same time when the main queue is running
	func loadFromPersistentStore(completion: @escaping ([Student]?, Error?) -> Void) {
		let bgQueue = DispatchQueue(label: "studentQueue", attributes: .concurrent)

	// If the closure is the last parameter in the function, we can shorten it with "{}"
		bgQueue.async {
			let fm = FileManager.default
			guard let url = self.persistentFileURL, fm.fileExists(atPath: url.path) else {
				completion(nil, nil)
				return

			}

			// First method that might block the main thread if we ran this on the main thread.
			// Which is why we are using a different queue
			// Create a jsonDecoder and then decode the student data
			// The .self on line39 helps specified the type that the [Student] is past of which is the type 
			do {
				let data = try Data(contentsOf: url)
				let decoder = JSONDecoder()
				let students = try decoder.decode([Student].self, from: data)
				completion(students, nil)
			} catch {
				print("Error leading student data: \(error)")
				completion(nil, error)
			}
		}
	}
}
