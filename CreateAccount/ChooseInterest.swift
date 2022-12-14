//
//  ChooseInterest.swift
//  CreateAccount
//
//  Created by Giorgi Samkharadze on 11.12.22.
//

import SwiftUI

struct ChooseInterest: View {
    
    var faculty: [String] = ["FACULTY OF EXACT AND NATURAL SCIENCES", "FACULTY OF HUMANITIES", "FACULTY OF SOCIAL AND POLITICAL SCIENCES", "FACULTY OF PSYCHOLOGY AND EDUCATIONAL SCIENCES", "FACULTY OF ECONOMICS AND BUSINESS", "FACULTY OF MEDICINE", "FACULTY OF LAW"]
    
    @State private var selectedFacult: String = ""
    
    var course: [String] = ["0-1", "1-2", "2-3", "3-4"]
    @State private var selectedCourse: String = ""
    
    var body: some View {
        NavigationView{
            ZStack {
                Color(#colorLiteral(red: 0.05222354829, green: 0.3226804733, blue: 0.7275559306, alpha: 1)).opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        
                        VStack {
                            VStack{
                                
                                Text("Pick a faculty you study on")
                                    .font(.system(size: 25, weight: .heavy))
                                    .foregroundColor(Color.black.opacity(0.7))
                                
                                Picker("Pick a faculty you study on", selection: $selectedFacult){
                                            ForEach(faculty, id: \.self) {
                                                Text($0)
                                            }
                                        }
                                .accentColor(.black.opacity(0.4))
                            .pickerStyle(MenuPickerStyle())
                                Divider()
                                Text(selectedFacult)
                              
                            }
                            Spacer().frame(height: 70)
                            
                            VStack(alignment: .center, spacing: 20) {
                                Text("Chooce a faculty of the person you are interested in ")
                                    .font(.system(size: 20, weight: .heavy))
                                    .foregroundColor(Color.black.opacity(0.7))
                                    .multilineTextAlignment(.center)
                                
                                
                                InterestedInFaculty()
                            }
                            Spacer().frame(height: 70)
                            
                            VStack {
                                Text("On which course are you on?")
                                Picker("Course", selection: $selectedCourse) {
                                    ForEach(course, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(SegmentedPickerStyle())
                                .padding()
                                
                                
                            }
                            Spacer().frame(height: 70)
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Create Account")
                                    .font(.system(size: 25, weight: .heavy))
                                    .foregroundColor(Color.pink)
                                  //  .frame(height: 45)
                                    .padding(.horizontal)
                                    .frame(width: 250, height: 60)
                                    .background(Color.white)
                                    .cornerRadius(25)
                                    
                                    .overlay  {
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.gray, lineWidth: 2)
                                    }
                                    
                                    .padding(.horizontal)
                                .padding(.bottom)
                            })
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
                }
            }
        }
    }
}

struct ChooseInterest_Previews: PreviewProvider {
    static var previews: some View {
        ChooseInterest()
    }
}
