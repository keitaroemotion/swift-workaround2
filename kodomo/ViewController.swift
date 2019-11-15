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

    var locationManager:    CLLocationManager! = nil
    var longitude:          CLLocationDegrees!
    var latitude:           CLLocationDegrees!
    @IBOutlet var lonLabel: UILabel!
    @IBOutlet var latLabel: UILabel!

    @IBAction func nowButton(sender: AnyObject) {
        locationManager.startUpdatingLocation()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        longitude     = 0.0
        latitude      = 0.0

        self.lonLabel?.text = String(longitude)
        self.latLabel?.text = String(latitude)

        locationManager                 = CLLocationManager()
        locationManager.delegate        = self
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter  = 300
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func locationManager(
        manager:                         CLLocationManager!,
        didUpdateToLocation newLocation: CLLocation!,
        fromLocation        oldLocation: CLLocation!
    ){
        longitude          = newLocation.coordinate.longitude
        latitude           = newLocation.coordinate.latitude
        self.lonLabel?.text = String(longitude)
        self.latLabel?.text = String(latitude)
    }

    func locationManager(
         manager:                CLLocationManager!,
         didFailWithError error: NSError!
    ){
        NSLog("Error")
    }
}
