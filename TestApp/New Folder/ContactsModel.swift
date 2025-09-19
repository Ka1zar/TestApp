//
//  ContactsModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 19/9/25.
//

import SwiftUI

struct Contact: Identifiable, Codable {
    let id: Int
    let name: String
    let phone: String
}
