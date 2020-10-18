//
//  DataManager.swift
//  MyPetGallerySwiftUI
//
//  Created by Justus Aype Jose on 18/10/20.
//

import Foundation

class DataManager {
    var isReadingFromDummyData: Bool = true
    static var shared = DataManager()
    private init(_ isReadingFromDummyData: Bool = true) {
        self.isReadingFromDummyData = isReadingFromDummyData
    }

    func fetchPetDataFromFile() -> AllPetsVM? {
        if let filePath = Bundle.main.path(forResource: "PetJSON", ofType: "txt"),
           let values = try? String(contentsOf: URL(fileURLWithPath: filePath)),
           let data = values.data(using: String.Encoding.utf8),
           let fetchedPets = try? JSONDecoder().decode(AllPets.self, from: data) {

            let allPets = AllPetsVM(pets: fetchedPets)
            return allPets

        } else {

            print("Error Reading content from file")
            return nil

        }
    }
}
