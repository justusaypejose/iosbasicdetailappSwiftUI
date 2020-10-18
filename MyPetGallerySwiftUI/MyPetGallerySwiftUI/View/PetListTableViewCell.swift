//
//  PetListTableViewCell.swift
//  MyPetGallerySwiftUI
//
//  Created by Justus Aype Jose on 18/10/20.
//

import SwiftUI

struct PetListTableViewCell: View {
    var petAge: Int?
    var petName: String?
    var petImage: String?
    init(pet: PetsVM) {
        self.petAge = pet.age
        self.petName = pet.name
        self.petImage = pet.imageName
    }
    var body: some View {
        HStack {
            if let petImage = self.petImage {
                Image(petImage).resizable().aspectRatio(contentMode: .fit).frame(width: 90, height: 90, alignment: .center).padding()
            } else {
                Image(systemName: "hare.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 90, height: 90, alignment: .center).padding()
            }
            VStack {
                Text(self.petName ?? "No Pet Name Found").font(.system(size: 24)).fontWeight(.semibold).lineLimit(1).frame(width: 100, height: 25, alignment: .leading).minimumScaleFactor(0.4)
                Text("Age: \(self.petAge ?? 0)").font(.system(size: 18)).fontWeight(.light).frame(width: 100, height: 25, alignment: .leading)
            }
        }.frame(width: 320, height: 120, alignment: .leading)
    }
}

struct PetListTableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        PetListTableViewCell(pet: PetsVM(name: "Timmie", age: 2, id: "2")).previewLayout(.sizeThatFits)
    }
}
