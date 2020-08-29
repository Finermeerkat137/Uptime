//
//  ViewController.swift
//  Uptime
//
//  Created by Sudhip Nashi on 8/27/20.
//  Copyright © 2020 nashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var dayText: UILabel!
    @IBOutlet weak var hourText: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var minuteText: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondText: UILabel!
    
    var refreshTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        center()
        refreshWithTimer()
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
        dayLabel.center.x = self.view.center.x
        hourLabel.center.x = self.view.center.x
        mainLabel.center.x = self.view.center.x
        dayText.center.x = self.view.center.x
        hourText.center.x = self.view.center.x
        minuteLabel.center.x = self.view.center.x
        minuteText.center.x = self.view.center.x
        secondLabel.center.x = self.view.center.x
        secondText.center.x = self.view.center.x
    }

}

