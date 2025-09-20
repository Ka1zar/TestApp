//
//  CasinoView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI

struct CasinoView: View {
    @State private var symbols = ["apple", "cherry", "star"]
    @State private var reels = ["apple", "cherry", "star"]
    @State private var credits = 100
    
    var body: some View {
        VStack(spacing: 20) {
            Text("RMIT Casino 🎰")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("CasinoRed"))
            
            Text("Credits: \(credits)")
                .font(.title2)
            
            HStack {
                ForEach(reels, id: \.self) { reel in
                    Image(systemName: reel + ".fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding()
                        .background(Color.yellow.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            
            Button("Spin") {
                spin()
            }
            .casinoButtonStyle()
        }
        .padding()
    }
    
    func spin() {
        reels = symbols.map { _ in symbols.randomElement()! }
        
        if reels.allSatisfy({ $0 == reels.first }) {
            credits += 50
        } else {
            credits -= 10
        }
    }
}

#Preview {
    CasinoView()
}
