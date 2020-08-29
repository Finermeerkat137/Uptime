//
//  TodayViewController.swift
//  UptimeWidget
//
//  Created by Sudhip Nashi on 8/28/20.
//  Copyright © 2020 nashi. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    @IBOutlet weak var rmMe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rmMe.text = String(get_seconds())
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
