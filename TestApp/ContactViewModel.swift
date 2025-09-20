//
//  ContactViewModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

class ContactViewModel: ObservableObject {
    @Published var contacts: [Contact] = []
    private var db = Firestore.firestore()
    
    init() {
        fetchContacts()
    }
    
    func fetchContacts() {
        db.collection("contacts").addSnapshotListener { snapshot, error in
            guard let documents = snapshot?.documents else { return }
            self.contacts = documents.compactMap { doc -> Contact? in
                try? doc.data(as: Contact.self)
            }
        }
    }
    
    func addContact(_ contact: Contact) {
        do {
            _ = try db.collection("contacts").addDocument(from: contact)
        } catch {
            print("Error adding contact: \(error)")
        }
    }
}

