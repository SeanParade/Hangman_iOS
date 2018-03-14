//
//  ViewController.swift
//  iHang
//
//  Created by Tech on 2018-03-14.
//  Copyright © 2018 GBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //display You Win/You Lose! && change text color
    @IBOutlet weak var winLabel: UILabel!
    
    //view to hold labels: labels gen based on word length
    @IBOutlet weak var guessView: UIStackView!
    
    //view that holds cells with keyboard buttons
    @IBOutlet weak var keyboardView: UICollectionView!
    
    //click to change view controller -> About
    @IBOutlet weak var infoBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

