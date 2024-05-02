//
//  LocationPreviewView.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 5/1/24.
//

import SwiftUI
import UIKit

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    let location: Location
    
    let buttonColor = Color(red: 0.5, green: 0, blue: 0) // Crimson color
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16.0) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 8) {
                learnMoreButton
                urlButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 45)
        )
        .cornerRadius(10)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            LocationPreviewView(location: LocationDataService.locations.first!).padding()
        }
        .environmentObject(LocationViewModel())
    }
}

extension LocationPreviewView {
    
    private var imageSection: some View {
        ZStack {
            if let imageNames = location.imageNames.first {
                Image(imageNames)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading) {
            Text(location.garageName)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(location.garageAddress)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button {
            vm.sheetLocation = location
        } label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
        .tint(buttonColor)
    }
    
    private var nextButton: some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .foregroundColor(buttonColor)
        .buttonStyle(.bordered)
    }
    
    private var urlButton: some View {
        Button(action: {
            openURL(urlString: "https://www.apple.com")
        }) {
            Text("Survey")
            .foregroundColor(.white)
            .font(.headline)
            .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
        .tint(buttonColor)
   
    }
    
    // Helper function to open the URL
        func openURL(urlString: String) {
            guard let url = URL(string: urlString) else {
                print("Invalid URL")
                return
            }
            
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            } else {
                print("Can't open URL on this device")
            }
        }
}
