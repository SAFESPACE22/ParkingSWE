//
//  Location_Details.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 3/25/24.
//

import SwiftUI
import MapKit

struct Location_Details: View {
    
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent:CGFloat = 70
    var color1 = Color(.green)
    var color2 = Color(.red)
    var color3 = Color(.yellow)
    
    @Binding var garageSelection: MKMapItem?
    @Binding var show:Bool
    
    var body: some View {
        VStack {
            
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(6)
        
            HStack {
                VStack(alignment: .leading) {
                    Text(garageSelection?.placemark.name ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Text(garageSelection?.placemark.title ?? "")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .lineLimit(2)
                        .padding(.trailing)
                }
            }
            .offset(x: -45)
            .padding(-3)
            
            let multiplier = width / 100 // convert percent to width ratio
            
            ZStack(alignment: .leading) {
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
            .offset(x: -80)
            .padding(10)
              
            GeometryReader { geometry in
                VStack {
                    Divider()
                        .frame(width: geometry.size.width, height: 1)
                        .background(Color(.systemGray5))
                    
                    Text("VIEW GARAGE FLOORS")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.gray)
                        .offset(x: -95)
                        .padding(-13)
                }
            }
        }
        .background(Color.black.opacity(0.82))
        .ignoresSafeArea()
        .cornerRadius(12)
    }
}

#Preview {
    Location_Details(garageSelection: .constant(nil), show: .constant(false))
}
