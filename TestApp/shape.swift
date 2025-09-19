//
//  shape.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .fill(Color.blue)   // filled circle
                .frame(width: 100, height: 100)

            Rectangle()
                .stroke(Color.red, lineWidth: 5) // outline only
                .frame(width: 120, height: 80)

            RoundedRectangle(cornerRadius: 15)
                .fill(Color.green)
                .frame(width: 150, height: 100)
        }
    }
}

#Preview { ShapesView() }

