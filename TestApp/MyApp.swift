//
//  MyApp.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI
import Firebase

@main
struct MyApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
