//
//  ViewController.swift
//  DateCalc
//
//  Created by csit267-13 on 10/26/15.
//  Copyright © 2015 Deva Dixon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    func calculateDateDifference(chosenDate: NSDate) {
        let todaysDate: NSDate = NSDate()
        let difference: NSTimeInterval = todaysDate.timeIntervalSinceDate(chosenDate) / 86400
        
        // NSLog("%@", NSDate().timeIntervalSinceDate(NSDate.distantFuture() as NSDate))
        
        let dateFormat: NSDateFormatter = NSDateFormatter()
        dateFormat.dateFormat = "MMMM d, yyyy hh:mm:ssa"
        
        let todaysDateString: String = dateFormat.stringFromDate(todaysDate)
        let chosenDateString: String = dateFormat.stringFromDate(chosenDate)
        
        let differenceOutput: String = NSString(format: "Difference between chosen date (%@) and today (%@) in days: %1.2f", chosenDateString, todaysDateString, fabs(difference)) as String
        
        outputLabel.text=differenceOutput
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

