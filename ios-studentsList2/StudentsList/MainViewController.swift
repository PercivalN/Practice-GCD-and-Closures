//
//  MainViewController.swift
//  StudentsList
//
//  Created by Percy Ngan on 10/19/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {


	@IBOutlet weak var sortSelector: UISegmentedControl!

	// Used to give a the mainVC a reference to the tableVC
	// MARK: - Questions: What is private for?
	private var studentsTableViewController: StudentsTableViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
	@IBAction func sort(_ sender: UISegmentedControl) {
	}


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
	// This sets up the link between the 2 views
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "EmbeddedStudentsTableViewSegue" {
			let studentsTableVC = segue.destination as? StudentsTableViewController
			studentsTableViewController = studentsTableVC
		}
    }


}
