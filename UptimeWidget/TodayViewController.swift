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
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dayText: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var hourText: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var minuteText: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var refreshTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        center()
    }
    
    override func viewDidAppear(_ animated: Bool) {
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
        dayLabel.text = String(get_days())
        hourLabel.text = String(get_hours())
        minuteLabel.text = String(get_minutes())
        secondLabel.text = String(get_seconds())
    }
    
    func center() {
        dayLabel.center.y = self.view.center.y
        dayText.center.y = self.view.center.y
        hourLabel.center.y = self.view.center.y
        hourText.center.y = self.view.center.y
        minuteLabel.center.y = self.view.center.y
        minuteText.center.y = self.view.center.y
        minuteLabel.center.y = self.view.center.y
        secondLabel.center.y = self.view.center.y
        
    }
    
}
