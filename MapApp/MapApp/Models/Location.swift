//
//  LocationModel.swift
//  MapApp
//
//  Created by Bonginkosi Tshabalala on 2023/11/02.
//

import Foundation
import MapKit

struct Location {
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
}
