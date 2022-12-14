//
//  ProgressBarView.swift
//  CreateAccount
//
//  Created by Giorgi Samkharadze on 11.12.22.
//

import SwiftUI

struct ProgressBarView: View {
    @State private var downloadAmount = 0.0
       let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

       var body: some View {
           VStack {
               ProgressView("Downloading…", value: downloadAmount, total: 90)
               Button(action: {
                   downloadAmount += 30
                   if downloadAmount > 90 {
                       downloadAmount = 0.0
                   }
               }, label: {
                   Text("Click me")
               })
           }
           
           
           
        }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
