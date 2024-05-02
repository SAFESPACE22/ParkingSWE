//
//  Location.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 5/1/24.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    let garageName: String
    let garageAddress: String
    let coordinates: CLLocationCoordinate2D
    let imageNames: [String]
    let floors: [String]
    let availability: [String: [Bool]] 
    
    // Identifiable
    var id: String {
        // garageName = ""
        // garageAddress = ""
        // id = ""
        garageName + garageAddress
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}
