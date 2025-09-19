//
//  ContactsViewModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import Foundation

class ContactsViewModel: ObservableObject {
    @Published var contacts: [Contact] = []
    
    init() {
        load()
    }
    
    func load() {
        if let url = Bundle.main.url(forResource: "contacts", withExtension: "json"),
           let data = try? Data(contentsOf: url),
           let decoded = try? JSONDecoder().decode([Contact].self, from: data) {
            self.contacts = decoded
        }
    }
}

