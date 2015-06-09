//
//  ViewController.swift
//  ProjectAsnmntOnDay2ofClass_iOSf2
//
//  Created by Richard H Woolley on 6/5/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var newLableText = " "
  var index = -1
  var index2 = -1
  let fiveElementArrayOfStrings = ["R. P. Feynman", "Paul Dirac", "Paul Erdős", "Alan Turing",  "Linus Torvalds"]

  @IBOutlet weak var lableOutlet: UILabel!

// end of members of ViewController ----------------------
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func leftButton(sender: AnyObject) {
  // this method grabs only the last elememnt in the array and does so in == A HARD WAY === but, it is good for pratice using while etc
    if fiveElementArrayOfStrings.isEmpty {  // Obviously, this is entirely uncalled-for, since I know that the array is populated, but ...
      lableOutlet.text = String("The array is empty")
    }else{
    let endOfArray = fiveElementArrayOfStrings.count - 1
      index2 = -1
        while index2 < endOfArray {
          ++index2
          newLableText = fiveElementArrayOfStrings[index2]
          lableOutlet.text = String(newLableText)
        }
    }
  }
    
  @IBAction func rightButton(sender: AnyObject) {
  // this method cycles through all of the elements in the array, while never repeating the last element when button is pressed.
    if fiveElementArrayOfStrings.isEmpty {
      lableOutlet.text = String("The array is empty")
    }else{
      let endOfArray = fiveElementArrayOfStrings.count - 1
        if index < endOfArray {
          ++index
          newLableText = fiveElementArrayOfStrings[index]
          lableOutlet.text = String(newLableText)
        }else{
          index = -1
          ++index
          newLableText = fiveElementArrayOfStrings[index]
          lableOutlet.text = String(newLableText)
        }
    }
  }

  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  }
}

