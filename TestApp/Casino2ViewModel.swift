//
//  Casino2ViewModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI

class Casino2ViewModel: ObservableObject {
    @Published var reels = ["apple", "cherry", "star"]
    @Published var credits = 100
    
    let symbols = ["apple", "cherry", "star"]
    
    func spin() {
        reels = symbols.map { _ in symbols.randomElement()! }
        
        if reels.allSatisfy({ $0 == reels.first }) {
            credits += 50
        } else {
            credits -= 10
        }
    }
}
