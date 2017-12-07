//
//  ViewController.swift
//  fingerGame
//
//  Created by Arsalan Wahid Asghar on 9/15/17.
//  Copyright © 2017 ASGHARS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var masterOutput: UILabel!
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //userInput.text = " "
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        userInput.text = "love"
    }
    
    
    

    func randomFingers() -> Int{
        let randomnumber = arc4random_uniform(5) + 1
        return Int(randomnumber)
    }

    @IBAction func result(_ sender: UIButton) {
    
        var fingers = randomFingers()
       
        
        if fingers == 0{
            fingers = randomFingers()
        }
        
        
        
        
        print(fingers)
        //CHECK IF USER HAS ENTERED SOMEHTING OR NOT
        if let input = userInput.text{
        
           //check if string entered can be converted to int
            if Int(input) != nil{
                 masterOutput.textColor = UIColor.black
                if Int(input)! > 5 {
                    masterOutput.textColor = UIColor.red
                    masterOutput.text = "No more than 5 fingers"
                }else{
                if Int(input) == fingers{
                   
                    masterOutput.text = "You guessed right"
                }else{
                    masterOutput.text = "Sorry I was holding \(fingers) fingers"
                    }}
            }else{
                masterOutput.textColor = UIColor.red
                masterOutput.text = "Invalid Input"
        
        }
    
    }

    }
}

