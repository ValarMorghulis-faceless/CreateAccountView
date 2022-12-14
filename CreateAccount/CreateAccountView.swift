//
//  CreateAccountView.swift
//  CreateAccount
//
//  Created by Giorgi Samkharadze on 09.12.22.
//

import SwiftUI

struct CreateAccountView: View {
    
   
    
    @State var username: String = ""
    
    @State var bio: String = ""
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    @State private var birthDate = Date.now
    
    @State private var selectedGender = "Male"
    let genders = ["Male", "Female", "Other"]
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.05222354829, green: 0.3226804733, blue: 0.7275559306, alpha: 1)).opacity(0.3)
                    .ignoresSafeArea()
                
                
                VStack {
                    
                        
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        
                        VStack(alignment: .leading, spacing: 60) {
                            VStack(alignment: .leading) {
                                Text("Create Username")
                                    .font(.system(size: 18, weight: .thin))                            .padding(.leading)
                                
                                CustomTextField(fillin: username, placeholder: "Create Username")
                                    .frame(width: 300)
                                
                            }
                            .padding([.top,.trailing], 100)
                            
                            
                            
                            VStack(spacing: 18) {
                                
                                Text("Choose Birth Date")
                                    .font(.system(size: 18, weight: .thin))
                                    .padding(.trailing,25)
                                
                                DatePicker("", selection: $birthDate, in: ...Date.now, displayedComponents: .date)
                                    .labelsHidden()
                                    .background(Color.white)
                                    .cornerRadius(30)
                                    .scaleEffect(x: 1.5, y: 1.5)
                                                            
                                //                               Text("Date is \(birthDate, formatter: dateFormatter)")
                            }
                            .padding(.leading, 20)
                            
                           
                                
                            VStack {
                                Text("Choose Your Gender")
                                    .font(.system(size: 18, weight: .thin))

                                Picker("", selection: $selectedGender) {
                                    ForEach(genders, id: \.self) {
                                        Text($0)
                                    }
                                    
                                    }
                                    .scaleEffect(x: 1.5, y: 1.5)
                                    .frame(width: 250)
                                    .pickerStyle(SegmentedPickerStyle())
                                    
                            }
                            .padding(.leading, 80)
                            
                        
                            VStack(spacing: 20) {
                                
                                Text("Intersted In")
                                    .font(.system(size: 18, weight: .thin))
                                
                                InterestedInView()
                            }
                            .padding(.leading)
                           
                            
                
                            VStack {
                                Text("Upload Images")
                                    .font(.system(size: 18, weight: .thin))
                                
                                UploadImagesView()
                    
                            }
                            .padding(.leading, 55)
                            
                            
                            VStack(alignment: .center) {
                                Text("Your Bio here")
                                    .font(.system(size: 18, weight: .thin))                            .padding(.leading)
                                
                                CustomTextField(fillin: username, placeholder: "Example: I do not do drugs, I am the drugs.")
                                   // .frame(width: 300)
                                
                            }
                            
                          
                            NavigationLink(destination: ChooseInterest(), label: {
                                Text("Next step")
                                    .font(.system(size: 25, weight: .heavy))
                                    .foregroundColor( Color.pink)
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
                            
                                .padding(.leading, 75)

                                
                       
                            
                          
                            
                            

                         
                        }
                        
                        
                                            
                    }.padding(.top,-80)
                    
                }.navigationTitle("CREATE ACCOUNT")
               
                
                
                
            }
            
            
            
            
        }
        
    }
    
   
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
