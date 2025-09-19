//
//  LocationModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let emoji: String
}

enum City: String, CaseIterable {
    case saigon = "Saigon"
    case hanoi = "Hanoi"
}
