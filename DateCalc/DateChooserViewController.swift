//
//  DateChooserViewController.swift
//  DateCalc
//
//  Created by csit267-13 on 10/26/15.
//  Copyright © 2015 Deva Dixon. All rights reserved.
//

import UIKit

class DateChooserViewController: UIViewController {

    @IBAction func setDateTime(sender: AnyObject) {
        (presentingViewController as! ViewController).calculateDateDifference((sender as! UIDatePicker).date)
    }
    
    
    @IBAction func dismissDateChooser(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        (presentingViewController as! ViewController).calculateDateDifference(NSDate())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preferredContentSize = CGSizeMake(340,380)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
