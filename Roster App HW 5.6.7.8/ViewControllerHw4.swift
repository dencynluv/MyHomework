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
    
    if let peopleFromArchive = self.loadFromArchive() {
      people = peopleFromArchive
    } else {
      
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
      
      for person in people {
        person.image = UIImage(named: "placeholder")
      }
      
      saveToArchive()
    }
    
    tableView.dataSource = self
  }
  
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    tableView.reloadData()
    saveToArchive()
  }
  
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    print("Fired")
    if segue.identifier == "showPersonDetailView" {
      
      if let destinationViewController = segue.destinationViewController as? PersonDetailViewController {
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
          let selectedRow = selectedIndexPath.row
          let chosenPerson = people[selectedRow]
          
          destinationViewController.selectedPerson = chosenPerson
          
        }
      }
    }
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return people.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("PersonCell", forIndexPath: indexPath) as! PersonTableViewCell
    let person = people[indexPath.row]
    
    //cell.textLabel?.text = "\(person.firstName) \(person.lastName)"
    
    cell.firstNameLabel.text = person.firstName
    cell.lastNameLabel.text = person.lastName
    cell.personImageView.image = person.image
    
    
    return cell
  }
  
  func saveToArchive() {
    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
      
      NSKeyedArchiver.archiveRootObject(people, toFile: documentPath + "/archive")
    }
  }
  
  func loadFromArchive() -> [Person]? {
    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
      
      if let people = NSKeyedUnarchiver.unarchiveObjectWithFile(documentPath + "/archive") as? [Person] {
        return people
      }
    }
    
    return nil
  }
  
}


