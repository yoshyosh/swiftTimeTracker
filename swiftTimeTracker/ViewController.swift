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
    @IBOutlet weak var startTimerButton: UIButton!
    @IBOutlet weak var stopTimerButton: UIButton!

    var appTimer = NSTimer()
    //Killer confusing declaring type of array in brackets
    var viewSavedTimes = [String]()
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Show them how to add corner radius to views/buttons
        self.startTimerButton.layer.cornerRadius = 5.0
        self.stopTimerButton.layer.cornerRadius = 5.0
        self.navigationController.navigationBar.setBackgroundImage(UIImage(named: "transparentNav"), forBarMetrics: UIBarMetrics.Default)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        self.appTimer.invalidate()
        viewSavedTimes.append(self.currentTimerLabel.text)
        self.startTimerButton.hidden = false
        self.stopTimerButton.hidden = true

        // Need to explain the logic here, why we need to use as, etc
        let destinationVC: SavedTimesTableViewController = segue.destinationViewController as SavedTimesTableViewController
        destinationVC.savedTimes = self.viewSavedTimes
    }
    
    @IBAction func startTimerButtonDidPress() {
        // Need general explainations on the different methods

        self.appTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateCurrentTimeLabel", userInfo: NSDate(), repeats: true)
        self.startTimerButton.hidden = true
        self.stopTimerButton.hidden = false
        self.currentTimerLabel.text = "0"
    }

    func updateCurrentTimeLabel() {
        // NSDate math
        var elapsed = -(self.appTimer.userInfo as NSDate).timeIntervalSinceNow
        if elapsed < 60 {
            self.currentTimerLabel.text = String(format: "%.0f", elapsed)
        } else {
            self.currentTimerLabel.text = String(format: "%.0f:%02.0f", elapsed / 60, elapsed % 60)
        }
    }

}

