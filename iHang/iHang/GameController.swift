//
//  GameController.swift
//  iHang
//
//  Created by Tech on 2018-03-14.
//  Copyright © 2018 GBC. All rights reserved.
//

import UIKit

class GameController: UIViewController{
    
    
    @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet weak var hangmanView: UIView!
    
    //view that contains cells with buttons: might not need
    @IBOutlet weak var keyboardView: UICollectionView!
    
    //view for labels : generated # depending on word
    @IBOutlet weak var guessView: UIStackView!
    
    //display win/lose text : change color to green/red
    @IBOutlet weak var winLabel: UILabel!
    
    var wordList:[String] = [];
    var currentWord: String = "";
    var gameState: String = "Play";
    
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
        /*
        let wordProvider = new WordProvider();
        wordList = wordProvider.get();
         */
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        if(currentWord == ""){
            getRandomWord()
        }
        for _ in 0...currentWord.count{
            let label = UILabel();
            label.text = "_";
            guessView.addSubview(label);
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getRandomWord(){
        let wordListLength = UInt32(wordList.count-1)
        let randomInt = Int(arc4random_uniform(wordListLength))
        currentWord = wordList[randomInt]
        
    }
    func indexOf(letter: Character)->([Int]){
        var positions = [Int]();
        let chars = Array(currentWord)
        for char in chars{
            if(letter == char){
                positions.append()
            }
        }
    }
    
    
}



