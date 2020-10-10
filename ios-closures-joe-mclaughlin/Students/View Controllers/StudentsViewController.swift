//
//  MainViewController.swift
//  Students
//
//  Created by Ben Gohlke on 6/17/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {

	// MARK: - IBOutlets

	@IBOutlet weak var sortSelector: UISegmentedControl!
	@IBOutlet weak var filterSelector: UISegmentedControl!
	@IBOutlet weak var tableView: UITableView!

	// MARK: - Properties
	private let studentController = StudentController()

	// Call didSet and have it updateDataSource
	// If anything changes to the [Student] then updateDataSource()
	private var students: [Student] = [] {
		didSet {
			updateDataSource()
		}
	}

	private var filteredAndSortedStudents: [Student] = [] {
		didSet {
			tableView.reloadData()
		}
	}


	override func viewDidLoad() {
		super.viewDidLoad()

		studentController.loadFromPersistentStore { students, error in
			if let error = error {
				print("This means that there is an error")
				print("Error loading students: \(error)")
				return
			}

			DispatchQueue.main.async {
				self.students = students ?? []
				print("The students have are on the main queue")
			}

		}
		tableView.dataSource = self
	}

	// MARK: - Action Handlers

	@IBAction func sort(_ sender: UISegmentedControl) {
		updateDataSource()
	}

	@IBAction func filter(_ sender: UISegmentedControl) {
		updateDataSource()
	}

	// MARK: - Private

	private func updateDataSource() {

		var updatedStudents: [Student]

		switch filterSelector.selectedSegmentIndex {
		case 1: // filter for iOS
			updatedStudents = students.filter({ student -> Bool in
				return student.course == "iOS"
			})
		case 2: // filter Web
			updatedStudents = students.filter { $0.course == "Web" }
		case 3: // filter for UX
			updatedStudents = students.filter { $0.course == "UX" }
		default: // filter for none
			updatedStudents = students
		}

		filteredAndSortedStudents = updatedStudents
	}
}

extension StudentsViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		print("This is the number of students: \(filteredAndSortedStudents.count)")
		return filteredAndSortedStudents.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath)

		let aStudent = filteredAndSortedStudents[indexPath.row]
		cell.textLabel?.text = aStudent.name
		cell.detailTextLabel?.text = aStudent.course

		return cell
	}
}
