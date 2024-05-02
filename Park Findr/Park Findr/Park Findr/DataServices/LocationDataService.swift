//
//  LocationDataService.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 5/1/24.
//

import Foundation
import MapKit

class LocationDataService {
    static let locations: [Location] = [
        Location(
            garageName: "Asp Avenue Parking Facility",
            garageAddress: "Norman, OK 73019",
            coordinates: CLLocationCoordinate2D(latitude: 35.205674, longitude: -97.443773),
            imageNames: [
                "asp_1"
            ],
            floors: [
                "Floor 1",
                "Floor 2",
                "Floor 3",
                "Floor 4",
                "Floor 5",
                "Floor 6",
            ],
            availability: [
                    "Floor 1": [false, false, false, false, false, false],
                    "Floor 2": [false, false, true, true, true, true],
                    "Floor 3": [false, true, true, true, true, true],
                    "Floor 4": [false, true, true, true, true, true],
                    "Floor 5": [false, true, true, true, true, true],
                    "Floor 6": [false, true, true, true, true, true]
                ]
        ),
        
        Location(
            garageName: "Elm Avenue Parking Facility",
            garageAddress: "Norman, OK 73019",
            coordinates: CLLocationCoordinate2D(latitude: 35.20946, longitude: -97.448395),
            imageNames: [
                "elms_1"
            ],
            floors: [
                "Floor 1",
                "Floor 2",
                "Floor 3",
                "Floor 4",
                "Floor 5",
            ],
            availability: [
                "Floor 1": [false, true, true, true, true, true],
                "Floor 2": [false, true, true, true, true, true],
                "Floor 3": [false, true, true, true, true, true],
                "Floor 4": [false, true, true, true, true, true],
                "Floor 5": [false, true, true, true, true, true]
                ]
        ),
        
        Location(
            garageName: "Jenkins Parking Garage",
            garageAddress: "1332 S Jenkins Ave, Norman, OK 73019",
            coordinates: CLLocationCoordinate2D(latitude: 35.201910, longitude: -97.441915),
            imageNames: [
                "jenkins_1"
            ],
            floors: [
                "Floor 1",
                "Floor 2",
                "Floor 3",
                "Floor 4",
                "Floor 5",
                "Floor 6",
            ],
            availability: [
                "Floor 1": [false, true, true, false, true, true],
                "Floor 2": [false, true, true, true, true, true],
                "Floor 3": [false, true, true, true, true, true],
                "Floor 4": [false, true, true, true, true, true],
                "Floor 5": [false, true, true, true, true, true],
                "Floor 6": [false, true, true, true, true, true]
                ]
        ),
    ]

    
}
