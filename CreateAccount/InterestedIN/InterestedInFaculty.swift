//
//  InterestedInFaculty.swift
//  CreateAccount
//
//  Created by Giorgi Samkharadze on 11.12.22.
//

import SwiftUI


struct Faculty{
    var id = UUID()
    var name: String
    var isSelected: Bool = false
}

struct InterestedInFaculty: View {
    @State var ingredients: [Faculty] = [Faculty(name: "EXACT AND NATURAL SCIENCES"),
                                            Faculty(name: "HUMANITIES"),
                                            Faculty(name: "SOCIAL AND POLITICAL SCIENCES"),
    Faculty(name: "PSYCHOLOGY AND EDUCATIONAL SCIENCES"),
                                         Faculty(name: "ECONOMICS AND BUSINESS"),
                                         Faculty(name: "MEDICINE")]
   @State private var selectedGender: [String] = []
    
    var body: some View{
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
        
                    ForEach(0..<ingredients.count){ index in
                        HStack {
                            Button(action: {
                                ingredients[index].isSelected = ingredients[index].isSelected ? false : true
                                selectedGender.append(ingredients[index].name)
                                print(selectedGender)
                            }) {
                                HStack{
                                    if ingredients[index].isSelected {
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(.pink)
                                            .animation(.easeIn)
                                    } else {
                                        Image(systemName: "circle")
                                            .foregroundColor(.primary)
                                            .animation(.easeOut)
                                    }
                                    Text(ingredients[index].name)
                                        .foregroundColor(.black)
                                }
                            }.buttonStyle(BorderlessButtonStyle())
                        }
                    }
                
            }
        }
    }
}

struct InterestedInFaculty_Previews: PreviewProvider {
    static var previews: some View {
        InterestedInFaculty()
    }
}
