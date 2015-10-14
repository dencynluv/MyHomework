//
//  PersonDetailViewController.swift
//  Roster App HW 3
//
//  Created by Cynthia Soto on 10/3/15.
//  Copyright © 2015 Cynthia Soto. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController, UITextFieldDelegate {
  
  var selectedPerson = Person(fName: "John", lName: "Doe")
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!  
  @IBOutlet weak var imageView: UIImageView!
  

    override func viewDidLoad() {
        super.viewDidLoad()
      
      firstNameTextField.delegate = self
      lastNameTextField.delegate = self
      
      firstNameTextField.text = selectedPerson.firstName
      lastNameTextField.text = selectedPerson.lastName
      

        // Do any additional setup after loading the view.
    }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    
    if let firstNameText = firstNameTextField.text {
      selectedPerson.firstName = firstNameText
    }
    
    if let lastNameText = lastNameTextField.text {
      selectedPerson.lastName = lastNameText
    }
    
    textField.resignFirstResponder()
    
    return true
  }

  }

