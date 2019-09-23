//
//  DetailViewController.swift
//  To Do List
//
//  Created by Amal Agrawal on 9/22/19.
//  Copyright © 2019 Amal Agrawal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var toDoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else{
            navigationController?.popViewController(animated: true)
        }
    }
    


}
