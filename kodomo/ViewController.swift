//
//  ViewController.swift
//  kodomo
//
//  Created by Kei Sugano on 2019/11/15.
//  Copyright © 2019 Kei Sugano. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    // let button = UIButton()

    var lm: CLLocationManager! = nil
    var longitude:          CLLocationDegrees!
    var latitude:           CLLocationDegrees!
    @IBOutlet var lonLabel: UILabel!
    @IBOutlet var latLabel: UILabel!

    @IBAction func nowButton(sender: AnyObject) {
        lm.startUpdatingLocation()
    }

    //func findLocation() {
    //    let locationManager                                = CLLocationManager()
    //    locationManager.desiredAccuracy                    = kCLLocationAccuracyHundredMeters;
    //    locationManager.distanceFilter                     = 10;
    //    //locationManager.pausesLocationUpdatesAutomatically = NO;
    //    //locationManager.allowsBackgroundLocationUpdates    = YES;
    //}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
