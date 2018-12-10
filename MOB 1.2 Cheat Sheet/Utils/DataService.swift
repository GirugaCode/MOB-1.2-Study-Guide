//
//  DataService.swift
//  MOB 1.2 Cheat Sheet
//
//  Created by Ryan Nguyen on 12/8/18.
//  Copyright © 2018 Danh Phu Nguyen. All rights reserved.
//

import Foundation

class DataService {
    static let DataAccess = DataService()
    
    private let learningOptions = [
        Option(title: "Autolayout"),
        Option(title: "Stack Views"),
        Option(title: "Collection Views"),
        Option(title: "Table Views"),
        Option(title: "Mapkit")
    ]
    
    func getLearningOptions() -> [Option] {
        return learningOptions
    }
}
