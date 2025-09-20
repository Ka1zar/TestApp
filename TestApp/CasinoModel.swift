//
//  CasinoModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI

struct CasinoButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("CasinoRed"))
            .foregroundColor(.red)
            .font(.headline)
            .cornerRadius(12)
            .shadow(radius: 5)
    }
}

extension View {
    func casinoButtonStyle() -> some View {
        self.modifier(CasinoButton())
    }
}
