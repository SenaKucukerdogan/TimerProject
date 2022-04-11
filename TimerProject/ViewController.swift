//
//  ViewController.swift
//  TimerProject
//
//  Created by Sena Küçükerdoğan on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var counter = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counter = 10
        timeLabel.text = "Time: \(counter)" // string içinde değişken çağırma yöntemi
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction(){
        
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate() // timer ı bitirir
            timeLabel.text = "Time is over"
        }
        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        print("button clicked")
    }
    
}

