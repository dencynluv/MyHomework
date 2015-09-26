//
//  ViewController.swift
//  Roster App HW 3
//
//  Created by Cynthia Soto on 9/23/15.
//  Copyright © 2015 Cynthia Soto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var counter = 0
  
  let firstNumbers = [0, 1, 2, 3, 4, 5]
  let secondNumbers = [100, 101, 102, 103, 104, 105]
 
// Label Outlets
  
  @IBOutlet weak var firstLabel: UILabel!
  @IBOutlet weak var secondLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    firstLabel.text = "\(firstNumbers[0])"
    
    secondLabel.text = "\(secondNumbers[0])"
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  

// Button Actions
  
  @IBAction func showFirstNumbers(sender: AnyObject) {
    print("Next number")
    counter++
    
    if counter >= firstNumbers.count {
      counter = 0
    }
    
    firstLabel.text = "\(firstNumbers[counter])"
    
  }

  
  @IBAction func showSecondNumbers(sender: AnyObject) {
    print("Numbers are fun!")
    counter++
    
    if counter >= secondNumbers.count {
      counter = 0
    }
    
    secondLabel.text = "\(secondNumbers[counter])"
    
  }

  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

