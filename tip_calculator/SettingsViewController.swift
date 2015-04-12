//
//  SettingsViewController.swift
//  tip_calculator
//
//  Created by Jayme Woogerd on 4/11/15.
//  Copyright (c) 2015 Jayme Woogerd. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSegmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        let selectedIndex = defaults.integerForKey("default_tip_amount")
        defaultTipSegmentedControl.selectedSegmentIndex = selectedIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButtonPressed(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipSegmentedControl.selectedSegmentIndex, forKey: "default_tip_amount")
        defaults.synchronize()
        dismissViewControllerAnimated(true, completion: nil)
    }

}
