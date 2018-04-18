//
//  HangmanRenderer.swift
//  iHang
//
//  Created by Tech on 2018-04-11.
//  Copyright © 2018 GBC. All rights reserved.
//

import Foundation
import UIKit

class HangmanRenderer{
    
    var images:[String] = [];
    init () {
        self.images = setupHangmanDraw();
    }
    
    func setupHangmanDraw() -> ([String]){
        return ["6Wrong","5Wrong","4Wrong","3Wrong","2Wrong","1Wrong"]
    }
    
    // Hangman drawing
    func drawHangman() -> UIImage? {
        
        var nextImage = self.images.popLast()
        if nextImage == nil {
            self.images = setupHangmanDraw();
            nextImage = self.images.popLast()
        }
        
        if let imageUrl = Bundle.main.path(forResource:nextImage, ofType:"png", inDirectory:"SVGs"){
        do
        {
              let image =  UIImage(contentsOfFile: imageUrl)
              print(imageUrl)
              return image;
            }
        }
        return nil
    }
}
