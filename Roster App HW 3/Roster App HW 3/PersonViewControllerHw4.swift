//
//  PersonViewControllerHw4.swift
//  Roster App HW 3
//
//  Created by Cynthia Soto on 9/25/15.
//  Copyright © 2015 Cynthia Soto. All rights reserved.
//

import UIKit

class PersonViewControllerHw4: UIViewController, UITableViewDataSource {

  let firstNames = ["Cynthia", "Dennis", "Allison", "Natatlie"]
  let lastNames = ["Soto", "Camacho", "Contreras", "Anaya"]

  
  @IBOutlet weak var tableView: UITableView!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

// 1st Method
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return firstNames.count
  
  }
    
// 2nd Method
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("PersonCell", forIndexPath: indexPath)
    
    let firstName = firstNames[indexPath.row]
    let lastName = lastNames[indexPath.row]
    let fullName = "\(firstName) \(lastName)"
    cell.textLabel?.text = fullName
    
    return cell
  }
  
}
