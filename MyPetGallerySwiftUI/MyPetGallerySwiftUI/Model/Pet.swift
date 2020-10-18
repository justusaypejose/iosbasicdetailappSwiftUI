//
//  Pet.swift
//  MyPetGallerySwiftUI
//
//  Created by Justus Aype Jose on 18/10/20.
//

import Foundation

class Pet: Identifiable, Codable {
    var name: String?
    var age: Int?
    var id: String?
    enum CodingKeys: String, CodingKey {
        case name
        case age
        case id = "tag"
    }
}
