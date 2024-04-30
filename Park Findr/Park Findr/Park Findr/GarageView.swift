//
//  GarageView.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 4/23/24.
//

import SwiftUI

struct ASPFloorView: View {
    
    var A1 = false
    var A2 = true
    var A3 = true
    var A4 = true
    var A5 = true
    var A6 = true
    
    var body: some View {
    ZStack {
        Rectangle()
            .fill(Color.black.opacity(0.82))
            .edgesIgnoringSafeArea(.all)
        
        GeometryReader { geometry in
                    VStack {
                        Text("Floor 1")
                    }
                    .position(x: geometry.size.width / 2, y: 30)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                }
        
        VStack {
            HStack(spacing: 150) {
                VStack {
                    if A1 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    }
                    
                    if A2 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(-45))
                            .position(CGPoint(x: 70.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    }
                    
                    if A3 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    }
                }
                VStack {
                    if A4 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    }
                    
                    if A5 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(45))
                            .position(CGPoint(x: 50.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    }
                    
                    if A6 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
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
                        .position(CGPoint(x: 70.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                }
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
                }
            }
        }
    }
}

#Preview {
    ASPFloorView()
}

struct ASPFloorView2: View {
    
    var B1 = true
    var B2 = false
    var B3 = true
    var B4 = true
    var B5 = true
    var B6 = true
    
    var body: some View {
    ZStack {
        Rectangle()
            .fill(Color.black.opacity(0.82))
            .edgesIgnoringSafeArea(.all)
        
        GeometryReader { geometry in
                    VStack {
                        Text("Floor 2")
                    }
                    .position(x: geometry.size.width / 2, y: 30)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                }
        
        VStack {
            HStack(spacing: 150) {
                VStack {
                    if B1 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    }
                    
                    if B2 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(-45))
                            .position(CGPoint(x: 70.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    }
                    
                    if B3 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    }
                }
                VStack {
                    if B4 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    }
                    
                    if B5 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(45))
                            .position(CGPoint(x: 50.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    }
                    
                    if B6 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
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
                        .position(CGPoint(x: 70.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                }
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
                }
            }
        }
    }
}

#Preview {
    ASPFloorView2()
}

struct ASPFloorView3: View {
    
    var C1 = true
    var C2 = true
    var C3 = false
    var C4 = true
    var C5 = true
    var C6 = true
    
    var body: some View {
    ZStack {
        Rectangle()
            .fill(Color.black.opacity(0.82))
            .edgesIgnoringSafeArea(.all)
        
        GeometryReader { geometry in
                    VStack {
                        Text("Floor 3")
                    }
                    .position(x: geometry.size.width / 2, y: 30)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                }
        
        VStack {
            HStack(spacing: 150) {
                VStack {
                    if C1 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    }
                    
                    if C2 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(-45))
                            .position(CGPoint(x: 70.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    }
                    
                    if C3 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    }
                }
                VStack {
                    if C4 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    }
                    
                    if C5 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(45))
                            .position(CGPoint(x: 50.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    }
                    
                    if C6 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
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
                        .position(CGPoint(x: 70.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                }
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
                }
            }
        }
    }
}

#Preview {
    ASPFloorView3()
}

struct ASPFloorView4: View {

    var D1 = true
    var D2 = true
    var D3 = true
    var D4 = true
    var D5 = true
    var D6 = true

    var body: some View {
    ZStack {
        Rectangle()
            .fill(Color.black.opacity(0.82))
            .edgesIgnoringSafeArea(.all)
        
        GeometryReader { geometry in
                    VStack {
                        Text("Floor 4")
                    }
                    .position(x: geometry.size.width / 2, y: 30)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                }
        
        VStack {
            HStack(spacing: 150) {
                VStack {
                    if D1 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    }
                    
                    if D2 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(-45))
                            .position(CGPoint(x: 70.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    }
                    
                    if D3 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    }
                }
                VStack {
                    if D4 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    }
                    
                    if D5 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(45))
                            .position(CGPoint(x: 50.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    }
                    
                    if D6 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
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
                        .position(CGPoint(x: 70.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                }
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
                }
            }
        }
    }
}

#Preview {
    ASPFloorView4()
}

struct ASPFloorView5: View {
    
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
        
        GeometryReader { geometry in
                    VStack {
                        Text("Floor 5")
                    }
                    .position(x: geometry.size.width / 2, y: 30)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                }
        
        VStack {
            HStack(spacing: 150) {
                VStack {
                    if E1 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    }
                    
                    if E2 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(-45))
                            .position(CGPoint(x: 70.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    }
                    
                    if E3 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    }
                }
                VStack {
                    if E4 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    }
                    
                    if E5 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(45))
                            .position(CGPoint(x: 50.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    }
                    
                    if E6 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
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
                        .position(CGPoint(x: 70.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                }
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
                }
            }
        }
    }
}

#Preview {
    ASPFloorView5()
}

struct ASPFloorView6: View {
    
    var F1 = true
    var F2 = true
    var F3 = true
    var F4 = true
    var F5 = true
    var F6 = true
        
    
    var body: some View {
    ZStack {
        Rectangle()
            .fill(Color.black.opacity(0.82))
            .edgesIgnoringSafeArea(.all)
        
        GeometryReader { geometry in
                    VStack {
                        Text("Floor 6")
                    }
                    .position(x: geometry.size.width / 2, y: 30)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                }
        
        VStack {
            HStack(spacing: 150) {
                VStack {
                    if F1 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 250.0))
                    }
                    
                    if F2 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(-45))
                            .position(CGPoint(x: 70.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    }
                    
                    if F3 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                    }
                }
                VStack {
                    if F4 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    }
                    
                    if F5 {
                        Image("Car")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 50.0))
                            .rotationEffect(.degrees(45))
                            .position(CGPoint(x: 50.0, y: 150.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    }
                    
                    if F6 {
                    Image("Car")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    } else {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
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
                        .position(CGPoint(x: 70.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(-45))
                        .position(CGPoint(x: 70.0, y: 50.0))
                }
                VStack {
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 250.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 150.0))
                    Image("parallel-lines")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 130)
                        .rotationEffect(.degrees(45))
                        .position(CGPoint(x: 50.0, y: 50.0))
                    }
                }
            }
        }
    }
}

#Preview {
    ASPFloorView6()
}
