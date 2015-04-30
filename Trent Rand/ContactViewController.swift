//
//  ContactViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/26/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation
import MapKit

class ContactViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Show
        let span = MKCoordinateSpanMake(0.1, 0.1)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        // Drop a pin on my house
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Trent Rand"
        annotation.subtitle = "2 miles from Arizona State University"
        mapView.addAnnotation(annotation)
        
        self.createBlur(effectStyle: UIBlurEffectStyle.Light, index: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func phoneCall(sender: AnyObject) {
        let phoneNumber = NSURL(string: "tel://6022761234")
            UIApplication.sharedApplication().openURL(phoneNumber!)
    }
    @IBAction func openEmail(sender: AnyObject) {
        let emailAddress = NSURL(string: "mailto:contact@TrentRand.com")
        UIApplication.sharedApplication().openURL(emailAddress!)
    }
    
    let location = CLLocationCoordinate2D(
        latitude: 33.419241,
        longitude: -111.919582
    )
}