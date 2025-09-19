//
//  HomeView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Home Screen")
                NavigationLink("Go to Details", destination: DetailView())
            }
            .navigationTitle("Main")
        }
    }
}

#Preview { HomeView() }
