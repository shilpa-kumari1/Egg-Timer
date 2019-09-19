//
//  ViewController.swift
//  EggTimer
//
//  Created by Shilpa Kumari on 05/08/19.
//  Copyright © 2019 Shilpa Kumari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var timer = Timer()
    var time = 210
    
    @objc func decreaseTime(){
        if time>0{
            time = time - 1
            timeLabel.text = String(time)
        }
        else{
            timer.invalidate()
        }
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if time>=10{
            time = time - 10
            timeLabel.text = String(time)
        }
    }
    @IBAction func plusTen(_ sender: Any) {
        time = time + 10
        timeLabel.text = String(time)
    }
    @IBAction func reset(_ sender: Any) {
        timeLabel.text = "210"
        time = 210
    }
    @IBAction func playButton(_ sender: Any) {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTime), userInfo: nil, repeats: true)
    }
    @IBOutlet weak var timeLabel: UILabel!
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
    }
    

}

