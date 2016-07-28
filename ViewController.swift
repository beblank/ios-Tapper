//
//  ViewController.swift
//  ios-Tapper
//
//  Created by aditya on 7/18/16.
//  Copyright © 2016 aditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    var maxTaps:Int = 0
    var currentTaps:Int = 0
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTF: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn:UIButton!
    @IBOutlet weak var tapLbl:UILabel!
    
    @IBAction func onPlayButtonPressed(sender:UIButton!){
        
        
        if howManyTapsTF.text != nil && howManyTapsTF.text != "" {
            
            logoImg.hidden = true
            howManyTapsTF.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapLbl.hidden = false
            
            maxTaps = Int(howManyTapsTF.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    @IBAction func onCoinTapped(sender:UIButton){
        currentTaps++
        updateTapsLabel()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTF.text = ""
        
        logoImg.hidden = false
        howManyTapsTF.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        tapLbl.hidden = true
        
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel(){
        tapLbl.text = "\(currentTaps) Taps"
    }
    

}

