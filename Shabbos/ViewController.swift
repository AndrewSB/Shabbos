//
//  ViewController.swift
//  Shabbos
//
//  Created by Andrew Breckenridge on 1/9/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    var manager: OneShotLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager = OneShotLocationManager()
        manager!.fetchWithCompletion {location, error in
            if let loc = location {
                println(location)
                
            } else if let err = error {
                println(err.localizedDescription)
            }
        }
        }
    
}

