//
//  LocationListView.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 5/1/24.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    var body: some View {
        VStack {
        Text("Nearby Parking Garages")
                        .font(.headline)
                        .padding(.top, 20)
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
            }
            }
        .listStyle(PlainListStyle())
        }
            .padding(.horizontal, 20)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        
        LocationListView()
            .environmentObject(LocationViewModel())
    }
}

extension LocationListView {
    
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                Text(location.garageName)
                    .font(.headline)
                Text(location.garageAddress)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
