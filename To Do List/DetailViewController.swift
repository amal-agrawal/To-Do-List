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
    var toDoItem: String?
    
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let toDoItem = toDoItem {
            toDoField.text = toDoItem
        }
        enableDisableSaveButton()
        toDoField.becomeFirstResponder()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UnwindFromSave"{
            toDoItem = toDoField.text
        }
    }
    
    func enableDisableSaveButton () {
        if let toDoFieldCount = toDoField.text?.count, toDoFieldCount > 0 {
            saveBarButton.isEnabled = true
        } else {
            saveBarButton.isEnabled = false
        }
    }
    
    @IBAction func toDoFieldChanged(_ sender: UITextField) {
        enableDisableSaveButton()
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
