//
//  LocationView.swift
//  MapApp
//
//  Created by Bonginkosi Tshabalala on 2023/11/02.
//

import SwiftUI

struct LocationView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations){
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationView()
        .environmentObject(LocationsViewModel())
}
