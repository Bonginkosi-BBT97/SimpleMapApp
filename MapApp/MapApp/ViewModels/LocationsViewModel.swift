//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Bonginkosi Tshabalala on 2023/11/02.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current Location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    // Current Region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    // Show list on map
    @Published var showLocationsList: Bool = false
    
    
    //Show location detail via sheet
    
    @Published var sheetLocation: Location? = nil 
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
        mapRegion = MKCoordinateRegion(
            center: location.coordinates,
            span: mapSpan)
    }
  }
   func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    func nextButtonPressed() {
        // get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation}) else {
            
            return print("Could not find curremt index locations array!")
        }
        
        //Check if the the currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // next index is NOT valid
            //resart from index 0
            
            guard let firstLocation = locations.first else  {return}
            showNextLocation(location: firstLocation)
            return
        }
        
        //Next index IS valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
