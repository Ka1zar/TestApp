//
//  ContactsDetailView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI

struct ContactsDetailView: View {
    let contact: Contact
    
    var body: some View {
        VStack(spacing: 20) {
            Text("👤 \(contact.name)")
                .font(.largeTitle)
            Text("📞 \(contact.phone)")
                .font(.title2)
        }
        .navigationTitle(contact.name)
    }
}

#Preview {
    ContactsDetailView(contact: Contact(id: 1, name: "Alice", phone: "123-456-7890"))
}
