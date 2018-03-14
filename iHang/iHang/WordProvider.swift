//
//  WordProvider.swift
//  iHang
//
//  Created by Tech on 2018-03-14.
//  Copyright © 2018 GBC. All rights reserved.
//

import Foundation

class WordProvider {
    var wordList:[String] = [];
    
    init() {
        self.wordList = get();
    }
    
    func get() -> ([String]){
        let wordFile = "words5";
        var wordList:[String] = [];
        print("Word list called");
        
        do{
            if let path = Bundle.main.path(forResource:wordFile, ofType:"txt", inDirectory:"WordLists"){
                let contents = try NSString(contentsOfFile: path, encoding: String.Encoding.ascii.rawValue)
                contents.enumerateLines({ (line,stop) -> () in
                    wordList.append(line)
                })
            }

        } catch {
            print(error)
        }
        return wordList;
    }
    
}
