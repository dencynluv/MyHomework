// Base Class

class Stick {
  
  var length : Int
  var width : Int
  var weight : Int
  
  var color : String
  
  var broken = false
  var faceUp = true
  
  init (startingLength : Int, startingWidth : Int, startingWeight : Int, startingColor : String) {
    length = startingLength
    width = startingWidth
    weight = startingWeight
    color = startingColor
  }
 
  func rollStick () {
    print("rolling!")
    faceUp = !faceUp
  }
  
  func shakeStick () {
    print("shaking!")
  }
  
  func breakStick () {
    print("stick is broken")
    broken = true
    length = length / 2
    weight = weight / 2
  }
  
  func sizeOfStick () -> Int {
    return length * width
  }
}


// 1st Sub Class

class TrekkingStick : Stick {
  
  var wristStrap = true
  
  func adjustStick () {
    print("collapsible stick")
    wristStrap = true
  }
}

let myTrekkingStick = TrekkingStick(startingLength: 4, startingWidth: 2, startingWeight: 2, startingColor: "black")


// 1st Sub, Sub Class

class NordicWalkingStick : TrekkingStick {
  
  var rubberTip = true
  
  func removeRubberTip () {
    print("rubber tip is off")
    rubberTip = true
    wristStrap = true
  }
// Ask if this is a behavior?? And do i have to include that rubbertTip = true if it is a property of the class and stays the same?
}

let myNordicWalkingStick = NordicWalkingStick(startingLength: 6, startingWidth: 3, startingWeight: 2, startingColor: "white")


// 2nd Sub Class

class Drumstick: Stick {
  
  var ovalTip = true
  
  func drumming () {
    print("Rat Tat Tat")
  }
}

let myDrumstick = Drumstick(startingLength: 8, startingWidth: 2, startingWeight: 2, startingColor: "tan")


// 2nd Sub, Sub Class

class MalletDrumstick: Drumstick {
  
  var softGrip = true
  
  func bangDrum () {
    print("gong!")
    ovalTip = false
  }
}

let myMalletDrumstick = MalletDrumstick (startingLength: 10, startingWidth: 6, startingWeight: 4, startingColor: "black")


// 3rd Sub Class

class Chopstick: Stick {
  
  var bambo = true
  
  func startEating () {
    print("Yummm!")
  }
}

let myChopstick = Chopstick (startingLength: 6, startingWidth: 2, startingWeight: 1, startingColor: "brown")


// 3rd Sub, Sub Class

class KoreanChopstick: Chopstick {
  
  var flatStyle = true
  
  func pickUpFood () {
    print("grab food")
    bambo = false
  }
}

let myKoreanChopstick = KoreanChopstick (startingLength: 8, startingWidth: 2, startingWeight: 2, startingColor: "silver")


// 4th Sub Class

class LacrosseStick: Stick {
  
  var meshPocket = true
  
  func playCatch () {
    print("catch!")
  }
}

let myLacrosseStick = LacrosseStick (startingLength: 12, startingWidth: 4, startingWeight: 2, startingColor: "white and Blue")


// 4th Sub, Sub Class

class GoalieLacrosseStick: LacrosseStick {
  
  var wideHead = true
  
  func goalieSave () {
    print("No Goal!")
    meshPocket = false
  }
}

let myGoalieLacrosseStick = GoalieLacrosseStick (startingLength: 10, startingWidth: 4, startingWeight: 2, startingColor: "white and red")


// 5th Sub Class

class LipStick: Stick {
  
  var matteFinish = true
  
  func putOn () {
    print("pucker up!")
  }
}

let myLipStick = LipStick (startingLength: 4, startingWidth: 2, startingWeight: 2, startingColor: "ruby red")


// 5th Sub, Sub Class

class Chapstick: LipStick {
  
  var hydration = true
  
  func lockMoisture () {
    print("smooth lips")
    matteFinish = false
  }
}

let myChapstick = Chapstick (startingLength: 2, startingWidth: 2, startingWeight: 2, startingColor: "clear")



// Testing if it works.

myNordicWalkingStick.sizeOfStick()
myNordicWalkingStick.weight
myNordicWalkingStick.breakStick()
let newSize = myNordicWalkingStick.sizeOfStick()
myNordicWalkingStick.broken
myNordicWalkingStick.weight




