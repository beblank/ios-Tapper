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
        logoImg.hidden = true;
        howManyTapsTF.hidden = true
        playBtn.hidden = true
        
        tapBtn.hidden = false
        tapLbl.hidden = false
    }
    

}

