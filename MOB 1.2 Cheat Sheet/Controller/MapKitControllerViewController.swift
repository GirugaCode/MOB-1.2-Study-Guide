//
//  MapKitControllerViewController.swift
//  MOB 1.2 Cheat Sheet
//
//  Created by Ryan Nguyen on 12/10/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit
import MapKit

class MapKitControllerViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self

        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view, typically from a nib.
        let london = BoilingCrab(title: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), info: "Home to the 2012 Summer Olympics.")
        let oslo = BoilingCrab(title: "Oslo", coordinate: CLLocationCoordinate2D(latitude: 59.95, longitude: 10.75), info: "Founded over a thousand years ago.")
        let paris = BoilingCrab(title: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508), info: "Often called the City of Light.")
        let rome = BoilingCrab(title: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5), info: "Has a whole country inside it.")
        let washington = BoilingCrab(title: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667), info: "Named after George himself.")
        let mexicoCity = BoilingCrab(title: "Capital for Mexico", coordinate: CLLocationCoordinate2D(latitude: 19.4326, longitude: -99.1332), info: "Great mexican food!")
        let sacramento = BoilingCrab(title: "Sacramento", coordinate: CLLocationCoordinate2D (latitude: 38.5816, longitude: -121.4944), info: "Most boring city ever!")
        
        mapView.addAnnotations([london, oslo, paris, rome, washington, mexicoCity, sacramento])
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 1
        let identifier = "BoilingCrab"
        
        // 2
        if annotation is BoilingCrab {
            // 3
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil {
                //4
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView!.canShowCallout = true
                
                // 5
                let btn = UIButton(type: .detailDisclosure)
                annotationView!.rightCalloutAccessoryView = btn
            } else {
                // 6
                annotationView!.annotation = annotation
            }
            
            return annotationView
        }
        
        // 7
        return nil
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let capital = view.annotation as! BoilingCrab
        let placeName = capital.title
        let placeInfo = capital.info
        
        let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }

}
