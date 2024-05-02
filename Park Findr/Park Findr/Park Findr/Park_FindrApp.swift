//
//  Park_FindrApp.swift
//  Park Findr
//
//  Created by Hoc Nguyen on 2/26/24.
//

import SwiftUI

@main
struct Park_FindrApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            splashScreenView()
        }
    }
}
