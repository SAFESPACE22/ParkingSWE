//
//  GarageView2.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 4/26/24.
//

import SwiftUI

struct ELMFloorView: View {
    
    var A1 = true
    var A2 = true
    var A3 = true
    var A4 = true
    var A5 = true
    var A6 = true
    
    var B1 = true
    var B2 = true
    var B3 = true
    var B4 = true
    var B5 = true
    var B6 = true
    
    var C1 = true
    var C2 = true
    var C3 = true
    var C4 = true
    var C5 = true
    var C6 = true
    
    var D1 = true
    var D2 = true
    var D3 = true
    var D4 = true
    var D5 = true
    var D6 = true
    
    var E1 = true
    var E2 = true
    var E3 = true
    var E4 = true
    var E5 = true
    var E6 = true
    
    var body: some View {
    ZStack {
        Rectangle()
            .fill(Color.black.opacity(0.82))
            .edgesIgnoringSafeArea(.all)
        
        VStack {
            HStack(spacing: 150) {
                VStack {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                }
                VStack {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                }
            }
        }
            
        VStack {
            HStack(spacing: 150) {
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                }
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                    }
                }
            }
        }
    }
}

#Preview {
    ELMFloorView()
}

