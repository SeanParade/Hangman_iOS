//
//  ViewController.swift
//  iHang
//
//  Created by Tech on 2018-03-14.
//  Copyright © 2018 GBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func aboutClick(_ sender: UIButton) {
        self.performSegue(withIdentifier: "tutIdentifier", sender: self)
    }
    
}

