//
//  ContentView.swift
//  MyPetGallerySwiftUI
//
//  Created by Justus Aype Jose on 18/10/20.
//

import SwiftUI

struct PetListView: View {
    var allPets: AllPetsVM? {
        if let pets = DataManager.shared.fetchPetDataFromFile() {
            return pets
        }
        return nil
    }
    var body: some View {
        NavigationView {
            if let pets = self.allPets?.pets {
                List(pets) {
                    eachPet in
                    NavigationLink(destination: PetDetailView(pet: eachPet)) {
                        PetListTableViewCell(pet: eachPet).frame(width: 340, height: 90, alignment: .leading)
                    }
                }.navigationBarTitle(Text("Pet Gallery"))

            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PetListView()
    }
}
