//
//  MapAppApp.swift
//  MapApp
//
//  Created by Bonginkosi Tshabalala on 2023/11/02.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
