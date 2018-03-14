//
//  GameController.swift
//  iHang
//
//  Created by Tech on 2018-03-14.
//  Copyright © 2018 GBC. All rights reserved.
//

import UIKit

class GameController: UIViewController{
    
    //view for hangman diagram
    @IBOutlet weak var hangmanView: UIView!
    
    //view that contains cells with buttons: might not need
    @IBOutlet weak var keyboardView: UICollectionView!
    
    //view for labels : generated # depending on word
    @IBOutlet weak var guessView: UIStackView!
    
    //display win/lose text : change color to green/red
    @IBOutlet weak var winLabel: UILabel!
    
    //click action to switch scenes to About game
    @IBAction func infoBtnClick(_ sender: Any) {
    }
    
    //click action for all buttons in keyboard : tagged with 0-25
    //log which letter clicked && change text color && disable button
    @IBAction func letterClick(_ sender: Any) {
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
