//
//  ViewControllerHw4.swift
//  Roster App HW 3
//
//  Created by Cynthia Soto on 9/30/15.
//  Copyright © 2015 Cynthia Soto. All rights reserved.
//

import UIKit

class ViewControllerHw4: UIViewController, UITableViewDataSource {
  
  var people = [Person]()

  
  @IBOutlet var tableView: UITableView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    tableView.dataSource = self
    
    let cyn = Person(fName: "Cynthia", lName: "Soto")
    let den = Person(fName: "Dennis", lName: "Camacho")
    let ali = Person(fName: "Allison", lName: "Contreras")
    let nati = Person(fName: "Natalie", lName: "Contreras")
    let mom = Person(fName: "Myrna", lName: "Anaya")
    
    people.append(cyn)
    people.append(den)
    people.append(ali)
    people.append(nati)
    people.append(mom)

        // Do any additional setup after loading the view.
    }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return people.count
    
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("PersonCell", forIndexPath: indexPath)
    let person = people[indexPath.row]
    
    cell.textLabel?.text = "\(person.firstName) \(person.lastName)"
    
    return cell
    
  }

}


