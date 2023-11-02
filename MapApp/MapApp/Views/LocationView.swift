//
//  LocationView.swift
//  MapApp
//
//  Created by Bonginkosi Tshabalala on 2023/11/02.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
            }
        }
    }


#Preview {
    LocationView()
        .environmentObject(LocationsViewModel())
}
