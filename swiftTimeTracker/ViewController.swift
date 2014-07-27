//
//  ViewController.swift
//  swiftTimeTracker
//
//  Created by Joseph Anderson on 7/26/14.
//  Copyright (c) 2014 ifd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentTimerLabel: UILabel!
    var appTimer = NSTimer()
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startTimerButtonDidPress(sender: AnyObject) {
        // Need general explainations on the different methods
        self.appTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "incrementCurrentTimeLabel", userInfo: nil, repeats: true)
    }
    
    func incrementCurrentTimeLabel(){
        var currentTime = (self.currentTimerLabel.text as NSString).intValue
        var updatedTime = ++currentTime
        self.currentTimerLabel.text = NSString(format: "%d", updatedTime)
        
        //Stops timer after 11 seconds
        if (updatedTime > 10){
            self.appTimer.invalidate()
        }
    }

}

