//
//  ViewController.swift
//  SplashDemo
//
//  Created by Nishu on 16/10/16.
//  Copyright © 2016 com.drone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        localnotification()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fireNotificationButton(sender: AnyObject) {
    }
    
    func localnotification(){
        
        let date = NSDate()
        let dateComponent = NSDateComponents()
        dateComponent.second = 5
        let calendar = NSCalendar.currentCalendar()
        let firedate:NSDate = calendar.dateByAddingComponents(dateComponent, toDate: date, options: NSCalendarOptions.init(rawValue: 1))!
        let notfy:UILocalNotification  = UILocalNotification()
        notfy.alertBody = "Hi this local notification"
        notfy.alertTitle = "Title"
        notfy.fireDate = firedate
        
        UIApplication.sharedApplication().scheduleLocalNotification(notfy)
        
        
        
        
    }

}

