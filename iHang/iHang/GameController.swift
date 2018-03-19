//
//  GameController.swift
//  iHang
//
//  Created by Nooran El-Sherif on 2018-03-19.
//  Copyright © 2018 GBC. All rights reserved.
//

import Foundation

import UIKit

class GameController: UIViewController{
    
    
    @IBOutlet weak var testLabel: UILabel!
    
    //where hangman will be drawn
    @IBOutlet weak var hangmanView: UIView!
    
    //view for labels : generated # depending on word
    @IBOutlet weak var guessView: UIStackView!
    
    //display win/lose text : change color to green/red
    @IBOutlet weak var winLabel: UILabel!
    
    //click action to switch scenes to About game
    @IBAction func infoBtnClick(_ sender: UIButton) {
    }
    
    
    //click action for all buttons in keyboard : tagged with 0-25
    //log which letter clicked && change text color && disable button
    @IBAction func letterClick(_ sender: UIButton) {
       testLabel.text = sender.currentTitle;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}


