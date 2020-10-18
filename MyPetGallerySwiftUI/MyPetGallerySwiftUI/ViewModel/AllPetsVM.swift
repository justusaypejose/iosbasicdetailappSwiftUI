//
//  AllPetsVM.swift
//  MyPetGallerySwiftUI
//
//  Created by Justus Aype Jose on 18/10/20.
//

import Foundation

class AllPetsVM {
    var pets: [PetsVM]
    init(pets: AllPets) {
        self.pets = [PetsVM]()
        for each in pets.pets {
            let eachPet = PetsVM(name: each.name ?? "", age: each.age ?? 0, id: each.id ?? "")
            self.pets.append(eachPet)
        }
    }
}
