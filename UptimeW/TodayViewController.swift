//
//  TodayViewController.swift
//  UptimeW
//
//  Created by Sudhip Nashi on 8/30/20.
//  Copyright © 2020 nashi. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var mainLabel: UILabel!
    
    var refreshTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshWithTimer()
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    func refreshWithTimer() {
        refreshTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.refresh), userInfo: nil, repeats: true)
    }
    
    @objc func refresh() {
        mainLabel.text = "\(get_days()) Days, \(get_hours()) Hours, \(get_minutes()) Minutes, \(get_seconds()) Seconds"
    }
    
}
