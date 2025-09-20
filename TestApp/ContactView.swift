//
//  ContactView.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI

struct ContactListView: View {
    @StateObject private var vm = ContactsViewModel()
    @State private var newName = ""
    @State private var newPhone = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List(vm.contacts) { contact in
                    VStack(alignment: .leading) {
                        Text(contact.name).font(.headline)
                        Text(contact.phone).font(.subheadline)
                    }
                }
                
                HStack {
                    TextField("Name", text: $newName)
                    TextField("Phone", text: $newPhone)
                    Button("Add") {
                        let contact = Contact(name: newName, phone: newPhone)
                        vm.addContact(contact)
                        newName = ""
                        newPhone = ""
                    }
                }
                .padding()
            }
            .navigationTitle("Contacts")
        }
    }
}

