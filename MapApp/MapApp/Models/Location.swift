//
//  LocationModel.swift
//  MapApp
//
//  Created by Bonginkosi Tshabalala on 2023/11/02.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
   
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
   var id: String {
        
        // name = "Randburg"
        // cityName = "Johannesburg"
        // id = "RandburgJohannesburg"
        
        name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
