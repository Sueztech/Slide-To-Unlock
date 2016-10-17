//
//  ViewController.swift
//  Slide To Unlock
//
//  Created by Kevin Abraham on 10/17/16.
//  Copyright © 2016 Sueztech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var localNotification = UILocalNotification()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        localNotification.alertAction = "unlock"
        localNotification.alertBody = "Slide to Unlock"
        localNotification.timeZone = NSTimeZone.local
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 1) as Date
        UIApplication.shared.scheduleLocalNotification(localNotification)
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
        sleep(2);
        exit(0);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

