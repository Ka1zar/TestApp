//
//  ContactModel.swift
//  TestApp
//
//  Created by Lam Nguyen Nhat on 20/9/25.
//

import SwiftUI

struct Contact: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String
    var phone: String
}
