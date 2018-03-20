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
    
    var wordList:[String] = []
    var currentWord: String = ""
    var numGuesses: Int = 6
    var numBlanks: Int = 6
    
    //click action to switch scenes to About game
    @IBAction func infoBtnClick(_ sender: UIButton) {
    }
    
    
    //click action for all buttons in keyboard
    //log which letter clicked && change text color && disable button
    @IBAction func letterClick(_ sender: UIButton) {
       //show letter that is clicked in test label
        testLabel.text = sender.currentTitle;
        
        let char = Character(sender.currentTitle!)
        let indexes = getIndexesOf(letter: char)
        
        if indexes.count != 0{
            //make button green
            sender.backgroundColor = UIColor.green
            
            //set labels with button text
            for index in indexes{
                if let label = self.view.viewWithTag(index) as? UILabel{
                    label.text = sender.currentTitle
                    numBlanks = numBlanks-1
                }
            }
            
        }
        else{
            //make button red
            sender.backgroundColor = UIColor.red
            //draw hangman vector
            numGuesses = numGuesses-1
        }
        //disable button
        sender.isEnabled = false
        
        checkGameOver()
    }
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        
        //if there's no word, choose a random one
        if(currentWord == "")
        {
         getRandomWord()
        }
        //number of empty spaces
        numBlanks = currentWord.count
        setLabelTags()
    }
    
    func getRandomWord(){
        let len = UInt32(wordList.count-1)
        let randomInt = Int(arc4random_uniform(len))
        currentWord = wordList[randomInt]
    }
    //returns an array of integers where character is present in word
    func getIndexesOf(letter: Character)->[Int]{
        var indexes: [Int] = [Int]()
        var count = 0
        for char in currentWord{
            if char == letter{
                indexes.append(count)
            }
            count = count+1
        }
        return indexes;
    }
    //checks if no more guesses, no more blanks
    func checkGameOver()->(){
        if numGuesses == 0{
            winLabel.textColor = UIColor.red
            winLabel.text = "You Lose!"
        }
        else if numBlanks == 0{
            winLabel.textColor = UIColor.green
            winLabel.text = "You Win!"
            
        }
    
        
    }
    //generates labels for each letter in the current word
    func setLabelTags(){
        for index in 0...currentWord.count{
            let label = UILabel();
            label.text = "_";
            label.tag = index
            guessView.addSubview(label)
        }
    }
    //func reset()
    //move initial values to here and call on button press or when view is first loaded
}


