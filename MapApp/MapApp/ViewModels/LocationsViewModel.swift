//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Bonginkosi Tshabalala on 2023/11/02.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
