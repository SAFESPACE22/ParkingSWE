//
//  LocationDetailView.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 5/1/24.
//

import SwiftUI
struct LocationDetailView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent:CGFloat = 70
    var color1 = Color(.green)
    var color2 = Color(.red)
    var color3 = Color(.yellow)
    
    var floorLevel = ""
    
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x:0, y:10)
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    HStack {
                        statusBarSection
                        let totalSpotsText = calculateTotalSpots(availability: location.availability)
                        Text(totalSpotsText)
                        }
                    Divider()
                        listFloorView
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .sheet(item: $vm.sheetParkingGarge, onDismiss: nil) { location in
                    FloorView(location: location)
                }

            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton ,alignment: .topLeading)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationDataService.locations.first!).environmentObject(LocationViewModel())
    }
}

extension LocationDetailView {
    
    private var imageSection: some View {
        
        TabView {
            ForEach(location.imageNames, id: \.self) { Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        
        VStack(alignment: .leading, spacing: 8){
            Text(location.garageName)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(location.garageAddress)
                .font(.title3)
                .foregroundStyle(.secondary)
        }
        
    }
    
    private var statusBarSection: some View {
        
        let multiplier = width / 100 // convert percent to width ratio
        
        return ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.white.opacity(0.1))
            
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    percent <= 40
                    ? LinearGradient(gradient: Gradient(colors: [color1]), startPoint: .leading, endPoint: .trailing)
                    : (percent <= 73
                       ? LinearGradient(gradient: Gradient(colors: [color1, color3]), startPoint: .leading, endPoint: .trailing)
                       : LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing)
                      )
                )
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .foregroundColor(.clear)
            
        }
    }
    
    private var listFloorView: some View {
        
        VStack(alignment: .leading) {
            List {
                ForEach(location.floors, id: \.self) { floor in
                    if let availableSpotsText = calculateAvailableSpotsForFloor(floor: floor, availability: location.availability) {
                        Button {
                            vm.selectedFloor = floor
                            vm.sheetParkingGarge = location
                        } label: {
                            Text(floor + ":  " + availableSpotsText)
                                .font(.headline)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .aspectRatio(1, contentMode: .fit)
        .cornerRadius(10)
    }

    
    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
    
    func calculateTotalSpots(availability: [String: [Bool]]) -> String {
        var totalSpots = 0
        
        for (_, spots) in availability {
                totalSpots += spots.count - spots.filter { $0 }.count
        }
        
        return "Spots left: \(totalSpots)"
    }
    
    func calculateAvailableSpotsForFloor(floor: String, availability: [String: [Bool]]) -> String? {
        guard let spots = availability[floor] else {
            return nil
        }
        
        let availableCount = spots.filter { !$0 }.count // Counting false spots
        return "\(availableCount)"
    }

}
