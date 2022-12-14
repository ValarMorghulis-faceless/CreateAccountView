//
//  InterestedInView.swift
//  CreateAccount
//
//  Created by Giorgi Samkharadze on 10.12.22.
//

import SwiftUI

struct Gender{
    var id = UUID()
    var name: String
    var isSelected: Bool = false
}


struct InterestedInView: View {
    
    @State var ingredients: [Gender] = [Gender(name: "Man"),
                                            Gender(name: "Woman"),
                                            Gender(name: "Other"),]
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

struct InterestedInView_Previews: PreviewProvider {
    static var previews: some View {
        InterestedInView()
    }
}
