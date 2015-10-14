//
//  Person.swift
//  Roster App HW 3
//
//  Created by Cynthia Soto on 9/30/15.
//  Copyright © 2015 Cynthia Soto. All rights reserved.
//

import Foundation

class Person:NSObject, NSCoding  {
  
  var firstName = "Any"
  var lastName = "Doe"
  //var image : UIImage?

  init(fName: String, lName: String) {
    firstName = fName
    lastName = lName
  }
  
   required init?(coder aDecoder: NSCoder) {
    if let firstName = aDecoder.decodeObjectForKey("firstName") as? String {
      self.firstName = firstName
    }
    if let lastName = aDecoder.decodeObjectForKey("lastName") as? String {
      self.lastName = lastName
    }
    
//    if let data = aDecoder.decodeObjectForKey("image") as? NSData {
//      self.image = UIImage(data: data)
//    }
    
  }
  
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(firstName, forKey: "firstName")
    aCoder.encodeObject(lastName, forKey: "lastName")
//    if let image = image {
//    if let data = UIImagePNGRepresentation(image) {
//      aCoder.encodeObject(data, forKey: "image")
//      }
//    }
  }
}