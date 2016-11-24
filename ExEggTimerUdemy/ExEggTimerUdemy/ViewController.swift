//
//  ViewController.swift
//  ExEggTimerUdemy
//
//  Created by Jordi Valls Ribas on 24/11/2016.
//  Copyright © 2016 Jordi Valls Ribas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    var timer = Timer()
    
    var time = 210
    
    func decreaseTimer() {
        
        if time > 0 {
            
        time -= 1
        
        secondsLabel.text = String(time)
        
        } else {
        
            timer.invalidate()
            
        }
    }


    
    @IBOutlet weak var secondsLabel: UILabel!
    
    
    
    @IBAction func playPressed(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pausePressed(_ sender: Any) {
        
        timer.invalidate()
    }
    

    
    @IBAction func plusTen(_ sender: Any) {
        
        time += 10
        
        secondsLabel.text = String(time)
    }
    
    
    @IBAction func minusTen(_ sender: Any) {
        
        if time > 10 {
            
        time -= 10
        
        secondsLabel.text = String(time)
        }
    }
 
    
    @IBAction func reset(_ sender: Any) {
        
        time = 210
        
        secondsLabel.text = String(time)
        
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

