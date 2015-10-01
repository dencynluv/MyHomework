//
//  ViewControllerHw2.swift
//  Roster App HW 3
//
//  Created by Cynthia Soto on 9/24/15.
//  Copyright © 2015 Cynthia Soto. All rights reserved.
//

import UIKit

class ViewControllerHw2: UIViewController {
  
  var myCounter = 0
  
// Label Outlet
  
  @IBOutlet weak var topLabel: UILabel!
  @IBOutlet weak var bottomLabel: UILabel!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// Button Actions
  
  @IBAction func firstButtonPressed(sender: AnyObject) {
    view.backgroundColor = UIColor.yellowColor()
    print("You pressed me first!")
    myCounter++
    
    if myCounter > 10 {
      myCounter = 0
    }
    
    topLabel.text = "\(myCounter)"
  }
  
  @IBAction func secondButtonPressed(sender: AnyObject) {
    view.backgroundColor = UIColor.orangeColor()
    print("OUCH!")
    myCounter++
    
    if myCounter > 10 {
      myCounter = 0
    }
    
    bottomLabel.text = "\(myCounter)"
  }
  
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}
