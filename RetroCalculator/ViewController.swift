//
//  ViewController.swift
//  RetroCalculator
//
//  Created by William L. Marr III on 3/7/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var ouputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: ".wav")
        let soundURL = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
    }

}

