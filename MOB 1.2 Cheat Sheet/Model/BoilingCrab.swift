//
//  BoilingCrab.swift
//  MOB 1.2 Cheat Sheet
//
//  Created by Ryan Nguyen on 12/10/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import UIKit
import MapKit

class BoilingCrab: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String?
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
