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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Show
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        // Drop a pin on my house
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Trent Rand"
        annotation.subtitle = "Welcome to my neighborhood"
        mapView.addAnnotation(annotation)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}