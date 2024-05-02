//
//  splashScreenView.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 5/2/24.
//

import SwiftUI

struct splashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some View {
        if isActive {
            LocationView().environmentObject(vm)
        } else {
            VStack {
                VStack {
                    Image(systemName: "car.side")
                        .font(.system(size: 80))
                        .foregroundColor(Color(red: 0.5, green: 0, blue: 0))
                    Text("Park Findr")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                        
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        splashScreenView()
    }
}
