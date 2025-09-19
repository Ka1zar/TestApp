//
//  diamondsView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI

struct diamondsView: View {
    var body: some View {
        VStack { // vertical layout
            Text("💎") // diamond emoji
                .font(.system(size: 100)) // make it big
                .padding()
            
            Text("I'm Rich")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
            
            Text("I'm Rich")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
        }
    }
}

#Preview {
    diamondsView()
}
