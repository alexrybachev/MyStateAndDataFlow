//
//  MyStateAndDataFlowApp.swift
//  MyStateAndDataFlow
//
//  Created by Aleksandr Rybachev on 09.06.2021.
//

import SwiftUI

@main
struct MyStateAndDataFlowApp: App {
    @State private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
