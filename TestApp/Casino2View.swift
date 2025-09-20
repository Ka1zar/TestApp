//
//  Casino2View.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI

struct Casino2MVVMView: View {
    @StateObject private var vm = Casino2ViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Credits: \(vm.credits)")
                .font(.title)
            
            HStack {
                ForEach(vm.reels, id: \.self) { reel in
                    Image(systemName: reel + ".fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
            }
            
            Button("Spin") {
                vm.spin()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    Casino2MVVMView()
}
