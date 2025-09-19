//
//  ContentView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject private var viewModel = LocationsViewModel()
    
    var body: some View {
        VStack {
            // Logo
            Text("🎓 RMIT Locations")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .background(Color.red.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(12)
            
            // Picker
            Picker("City", selection: $viewModel.selectedCity) {
                ForEach(City.allCases, id: \.self) { city in
                    Text(city.rawValue).tag(city)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            .onChange(of: viewModel.selectedCity) { newCity in
                viewModel.updateRegion(for: newCity)
            }
            
            // Map
            Map(coordinateRegion: $viewModel.region, annotationItems: viewModel.locations) { loc in
                MapAnnotation(coordinate: loc.coordinate) {
                    Text(loc.emoji)
                        .font(.largeTitle)
                        .overlay(Text(loc.name)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .padding(4),
                                 alignment: .bottom)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview { ContentView() }
