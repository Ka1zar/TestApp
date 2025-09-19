//
//  LocationViewModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI
import MapKit

class LocationsViewModel: ObservableObject {
    @Published var selectedCity: City = .saigon
    @Published var region: MKCoordinateRegion
    
    let saigonLocations: [Location] = [
        Location(name: "Ben Thanh Market", coordinate: .init(latitude: 10.772, longitude: 106.698), emoji: "🛍️"),
        Location(name: "Saigon Notre-Dame", coordinate: .init(latitude: 10.779, longitude: 106.699), emoji: "⛪"),
        Location(name: "Bitexco Tower", coordinate: .init(latitude: 10.771, longitude: 106.704), emoji: "🏙️"),
        Location(name: "Nguyen Hue Street", coordinate: .init(latitude: 10.774, longitude: 106.704), emoji: "🚶"),
        Location(name: "RMIT Saigon South", coordinate: .init(latitude: 10.729, longitude: 106.694), emoji: "🎓")
    ]
    
    let hanoiLocations: [Location] = [
        Location(name: "Hoan Kiem Lake", coordinate: .init(latitude: 21.028, longitude: 105.852), emoji: "🌊"),
        Location(name: "Old Quarter", coordinate: .init(latitude: 21.034, longitude: 105.850), emoji: "🏘️"),
        Location(name: "Ho Chi Minh Mausoleum", coordinate: .init(latitude: 21.037, longitude: 105.836), emoji: "🪦"),
        Location(name: "Temple of Literature", coordinate: .init(latitude: 21.028, longitude: 105.835), emoji: "📜"),
        Location(name: "West Lake", coordinate: .init(latitude: 21.056, longitude: 105.822), emoji: "🚤")
    ]
    
    init() {
        // default region = Saigon
        self.region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 10.776, longitude: 106.700),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    }
    
    var locations: [Location] {
        switch selectedCity {
        case .saigon: return saigonLocations
        case .hanoi: return hanoiLocations
        }
    }
    
    func updateRegion(for city: City) {
        switch city {
        case .saigon:
            region.center = CLLocationCoordinate2D(latitude: 10.776, longitude: 106.700)
        case .hanoi:
            region.center = CLLocationCoordinate2D(latitude: 21.028, longitude: 105.852)
        }
    }
}
