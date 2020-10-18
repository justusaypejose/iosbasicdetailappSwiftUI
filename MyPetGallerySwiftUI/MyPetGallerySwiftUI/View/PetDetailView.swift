//
//  PetDetailView.swift
//  MyPetGallerySwiftUI
//
//  Created by Justus Aype Jose on 18/10/20.
//

import SwiftUI

struct PetDetailView: View {
    var pet: PetsVM
    var body: some View {
        NavigationView {
            VStack {
                if let petImage = self.pet.imageName {
                    Image(petImage).resizable().frame(width: 250, height: 250, alignment: .center).aspectRatio(contentMode: .fit).padding().shadow(radius: 5)
                } else {
                    Image(systemName: "hare.fill").resizable().frame(width: 250, height: 250, alignment: .center).aspectRatio(contentMode: .fit).padding().shadow(radius: 5)
                }
                Text(pet.name ?? "").font(.system(size: 32)).fontWeight(.heavy).lineLimit(1).padding(.horizontal).minimumScaleFactor(0.4)
                Text("Age (in years): \(pet.age ?? 0)").font(.system(size: 20)).fontWeight(.light).lineLimit(1).padding(.horizontal).minimumScaleFactor(0.4)
                Spacer()
            }
        }.navigationTitle(Text(pet.name ?? "Pet Name")).foregroundColor(.blue)
    }
}

struct PetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailView(pet: PetsVM(name: "Hummer", age: 2, id: "1"))
    }
}
