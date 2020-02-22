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

    override func viewDidLoad() {
        super.viewDidLoad()

		studentController.loadFromPersistentStore { students, error in
			if let error = error {
				print("Error loading students: \(error)")
				return
			}

			DispatchQueue.main.async {
				self.students = students ?? []
			}

		}
        tableView.dataSource = self
    }
    
    // MARK: - Action Handlers
    
    @IBAction func sort(_ sender: UISegmentedControl) {
    }
    
    @IBAction func filter(_ sender: UISegmentedControl) {
    }
    
    // MARK: - Private
    
    private func updateDataSource() {
		tableView.reloadData()
    }
}

extension StudentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath)
        
		let aStudent = students[indexPath.row]
		cell.textLabel?.text = aStudent.name
		cell.detailTextLabel?.text = aStudent.course
        
        return cell
    }
}
