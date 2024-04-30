//
//  ContentView.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 2/26/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var cameraPosition: MapCameraPosition = .region(.parkingRegion)
    @State private var garages = [MKMapItem]()
    @State private var garageSelection: MKMapItem?
    @State private var showDetails = false
    
    init() {
        
        let ASP = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 35.205674, longitude: -97.443773)))
            ASP.name = "Asp Avenue Parking Facility"
            
        let ELM = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 35.20946, longitude: -97.448395)))
            ELM.name = "Elm Avenue Parking Facility"
    
        let JENKINS = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 35.201910, longitude: -97.441915)))
            JENKINS.name = "Jenkins Parking Garage"
       
       _garages = State(initialValue: [ASP, ELM, JENKINS])
   }
    
    var body: some View {
        VStack {
            HStack {
                Text("Park Findr")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .offset(x: -70)
            }
            Spacer()
            VStack {
                Map(position: $cameraPosition, interactionModes: [], selection: $garageSelection) {
                    
                    ForEach(garages, id: \.self) { item in
                        let placemark = item.placemark
                        Marker(placemark.name ?? "", coordinate: placemark.coordinate)
                    }
                    
                }
                .onChange(of: garageSelection, { oldValue, newValue in
                    showDetails = newValue != nil
                })
                    .sheet(isPresented: $showDetails, content: {
                        Location_Details(garageSelection: $garageSelection, show: $showDetails)
                            .presentationDetents([.fraction(0.50), .fraction(0.10), .fraction(0.99)])
                            .presentationBackgroundInteraction(.enabled)
                            .interactiveDismissDisabled(true)
                            .presentationCornerRadius(9)
                            .edgesIgnoringSafeArea(.all)
                    })
                .background(Color.black.opacity(0.82))
                .edgesIgnoringSafeArea(.all)
                .frame(width: 393, height: 500)
                .cornerRadius(20)
            }
            .offset(y: -190)
        }
        .background(Color(red: 0.5, green: 0, blue: 0))// crimson background
    }
}

extension CLLocationCoordinate2D {
    static var centerRegion: CLLocationCoordinate2D {
        return .init(latitude: 35.20568133333333, longitude: -97.44469433333334)
    }
}

extension MKCoordinateRegion {
    static var parkingRegion: MKCoordinateRegion {
        return .init(center: .centerRegion, latitudinalMeters:1000, longitudinalMeters: 1000)
    }
}

#Preview {
    ContentView()
}

