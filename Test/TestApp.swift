//
//  TestApp.swift
//  Test
//
//  Created by ihpt on 22/11/2024.
//

import SwiftUI

// MVVM Arch -
// Model - data point
// View - UI
// View Model - manages Models for View

@main
struct TestApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
        }
    }
}
