//
//  ViewController.swift
//  XsandOsNobodyKnows
//
//  Created by Daniel Washington Ignacio on 30/05/21.
//


/*
 Create a function that takes a string, checks if it has the same number of x's and o's and returns either true or false.

 Return a boolean value (true or false).
 Return true if the amount of x's and o's are the same.
 Return false if they aren't the same amount.
 The string can contain any character.
 When "x" and "o" are not in the string, return true.
 Examples

 XO("ooxx") ➞ true

 XO("xooxx") ➞ false

 XO("ooxXm") ➞ true
 // Case insensitive.

 XO("zpzpzpp") ➞ true
 // Returns true if no x and o.

 XO("zzoo") ➞ false
 Notes

 Remember to return true if there aren't any x's or o's.
 Must be case insensitive.
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.XO("ooxx"))
        print(self.XO("xooxx"))
        print(self.XO("ooxXm"))
        print(self.XO("zpzpzpp"))
        print(self.XO("zzoo"))
        
    }
    func XO(_ str: String) -> Bool {
        var o: Int = 0
        var x: Int = 0
        for n in str.lowercased(){
            if n == "o"{
                o = o + 1
            }
            if n == "x"{
                x = x + 1
            }
        }

        if o == x {
            return true
        }
        return false
    }

}

