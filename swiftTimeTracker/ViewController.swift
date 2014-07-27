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
        self.startTimerButton.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        self.startTimerButton.layer.cornerRadius = 5.0
        self.stopTimerButton.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        self.stopTimerButton.layer.cornerRadius = 5.0
        self.stopTimerButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Need to explain the logic here, why we need to use as, etc
        let destinationVC: SavedTimesTableViewController = segue.destinationViewController as SavedTimesTableViewController
        destinationVC.savedTimes = self.viewSavedTimes
    }
    
    @IBAction func startTimerButtonDidPress(sender: AnyObject) {
        // Need general explainations on the different methods
        self.appTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "incrementCurrentTimeLabel", userInfo: nil, repeats: true)
        
        //Should create a toggle function
        self.startTimerButton.hidden = true
        self.stopTimerButton.hidden = false
    }
    
    @IBAction func stopTimerButtonDidPress(sender: AnyObject) {
        self.startTimerButton.hidden = false
        self.stopTimerButton.hidden = true
        
        //Stop the timer from running
        self.appTimer.invalidate()
        
        //Append the time it was stopped at
        viewSavedTimes.append(self.currentTimerLabel.text)
        //Go over how to setup performSegue with identifier, also introduce idea around logic, if this segueID do this
        self.performSegueWithIdentifier("showSavedTimesSegue", sender: self)
    }
    
    func incrementCurrentTimeLabel(){
        // As NSString, we are converting String to NSString which has the property intValue
        var currentTime = (self.currentTimerLabel.text as NSString).intValue
        var updatedTime = ++currentTime
        var updatedTimeText = NSString(format: "%d", updatedTime)
        self.currentTimerLabel.text = updatedTimeText
    }

}

