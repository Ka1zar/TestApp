//
//  DetailView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI

struct DetailView: View {
    let contacts = ["Alice", "Bob", "Charlie", "Jason"]
    
    var body: some View {
            NavigationStack {
                List(contacts, id: \.self) { name in
                    NavigationLink(destination: ContactDetailView(name: name)) {
                        HStack {
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 40, height: 40)
                                .overlay(Text(String(name.prefix(1))).foregroundColor(.white))
                            Text(name)
                        }
                    }
                }
                .navigationTitle("Contacts")
            }
        }
    }

struct ContactDetailView: View {
    let name: String

    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
                .overlay(Text(String(name.prefix(1)))
                         .font(.largeTitle)
                         .foregroundColor(.white))
            
            Text(name)
                .font(.title)
        }
        .navigationTitle(name)
    }
}

#Preview { DetailView() }
