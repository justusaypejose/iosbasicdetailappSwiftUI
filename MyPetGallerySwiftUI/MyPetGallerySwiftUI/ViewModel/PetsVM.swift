//
//  PetsVM.swift
//  MyPetGallerySwiftUI
//
//  Created by Justus Aype Jose on 18/10/20.
//

import Foundation

class PetsVM: Identifiable {
    var name: String?
    var age: Int?
    var imageName: String?
    var id: String
    init(name: String, age: Int, id: String) {
        self.name = name
        self.age = age
        self.imageName = "pet\(id)"
        self.id = id
    }
}
