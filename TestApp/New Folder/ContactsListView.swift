//
//  ContactsListView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI

struct ContactsListView: View {
    @StateObject private var vm = ContactsViewModel()
    
    var body: some View {
        NavigationStack {
            List(vm.contacts) { contact in
                NavigationLink(destination: ContactsDetailView(contact: contact)) {
                    VStack(alignment: .leading) {
                        Text(contact.name).font(.headline)
                        Text(contact.phone).font(.subheadline)
                    }
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview { ContactsListView() }
