//
//  FloorView.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 5/1/24.
//

import SwiftUI

struct FloorView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    let location: Location

    
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .center) {
                    if let floor = vm.selectedFloor {
                            Text(floor)
                        } 
                }
                .frame(maxWidth: .infinity)
                .font(.system(size: 50))
                .fontWeight(.bold)
                
                VStack {
                    HStack(spacing: 150) {
                        carLeft
                        carRight
                    }
                }
                
                VStack {
                    HStack(spacing: 150) {
                        parkingSpotsLeft
                        parkingSpotsRight
                    }
                }
            }
        }
        .disabled(true)
        .overlay(backButton ,alignment: .topLeading)
    }
}
    


struct FloorView_Previews: PreviewProvider {
    static var previews: some View {
        FloorView(location: LocationDataService.locations.first!).environmentObject(LocationViewModel())
    }
}



extension FloorView {
    
    private var backButton: some View {
        Button {
            vm.sheetParkingGarge = nil
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
    
    private var carLeft: some View {
        VStack {
            ForEach(location.floors, id: \.self) { floor in
                
                if let formattedString = formatAvailabilityForFloor(floor: floor, availability: location.availability) {
                    
                    if floor == vm.selectedFloor {
                        if formattedString[0] == true {
                            Image("Car")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75, height: 125)
                                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                                .rotationEffect(.degrees(-45))
                                .position(CGPoint(x: 70.0, y: 260.0))
                        } else if formattedString[0] == false {
                            Image("parallel-lines")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 130)
                                .rotationEffect(.degrees(-45))
                                .position(CGPoint(x: 70.0, y: 260.0))
                        }
                    }
                    
                    if floor == vm.selectedFloor {
                        if formattedString[1] == true {
                            Image("Car")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75, height: 125)
                                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                                .rotationEffect(.degrees(-45))
                                .position(CGPoint(x: 70.0, y: 265.0))
                        } else if formattedString[1] == false {
                            Image("parallel-lines")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 130)
                                .rotationEffect(.degrees(-45))
                                .position(CGPoint(x: 70.0, y: 265.0))
                        }
                    }
                    
                    if floor == vm.selectedFloor {
                        if formattedString[2] == true {
                            Image("Car")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75, height: 125)
                                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                                .rotationEffect(.degrees(-45))
                                .position(CGPoint(x: 70.0, y: 270.0))
                        } else if formattedString[2] == false {
                            Image("parallel-lines")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 130)
                                .rotationEffect(.degrees(-45))
                                .position(CGPoint(x: 70.0, y: 270.0))
                        }
                    }
                }
            }
        }
    }
    
    private var carRight: some View {
        VStack {
            ForEach(location.floors, id: \.self) { floor in
                
                if let formattedString = formatAvailabilityForFloor(floor: floor, availability: location.availability) {
                    
                    if floor == vm.selectedFloor {
                        if formattedString[3] == true {
                            Image("Car")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75, height: 125)
                                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                                .rotationEffect(.degrees(45))
                                .position(CGPoint(x: 50.0, y: 260.0))
                        } else if formattedString[3] == false {
                            Image("parallel-lines")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 130)
                                .rotationEffect(.degrees(45))
                                .position(CGPoint(x: 50.0, y: 260.0))
                        }
                    }
                    
                    if floor == vm.selectedFloor {
                        if formattedString[4] == true {
                            Image("Car")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75, height: 125)
                                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                                .rotationEffect(.degrees(45))
                                .position(CGPoint(x: 50.0, y: 260.0))
                        } else if formattedString[4] == false {
                            Image("parallel-lines")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 130)
                                .rotationEffect(.degrees(45))
                                .position(CGPoint(x: 50.0, y: 265.0))
                        }
                    }
                    
                    if floor == vm.selectedFloor {
                        if formattedString[5] == true {
                            Image("Car")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75, height: 125)
                                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                                .rotationEffect(.degrees(45))
                                .position(CGPoint(x: 50.0, y: 270.0))
                        } else if formattedString[5] == false {
                            Image("parallel-lines")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 130)
                                .rotationEffect(.degrees(45))
                                .position(CGPoint(x: 50.0, y: 270.0))
                        }
                    }
                }
            }
        }
    }

        
        private var parkingSpotsLeft: some View {
            VStack {
                Image("parallel-lines")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 130)
                    .rotationEffect(.degrees(-45))
                    .position(CGPoint(x: 70.0, y: 260.0))
                Image("parallel-lines")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 130)
                    .rotationEffect(.degrees(-45))
                    .position(CGPoint(x: 70.0, y: 265.0))
                Image("parallel-lines")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 130)
                    .rotationEffect(.degrees(-45))
                    .position(CGPoint(x: 70.0, y: 270.0))
            }
        }
        
        private var parkingSpotsRight: some View {
            VStack {
                Image("parallel-lines")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 130)
                    .rotationEffect(.degrees(45))
                    .position(CGPoint(x: 50.0, y: 260.0))
                Image("parallel-lines")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 130)
                    .rotationEffect(.degrees(45))
                    .position(CGPoint(x: 50.0, y: 265.0))
                Image("parallel-lines")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 130)
                    .rotationEffect(.degrees(45))
                    .position(CGPoint(x: 50.0, y: 270.0))
            }
        }
        
    func formatAvailabilityForFloor(floor: String, availability: [String: [Bool]]) -> [Bool]? {
        // Check if there are availability data for the given floor, return nil if not found
        guard let spots = availability[floor] else {
            return nil
        }
        
        // Directly return the array of Boolean values
        return spots
    }

         
    
    
}
    

