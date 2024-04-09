//
//  InteractionView.swift
//  FurEver
//
//  Created by Sebastian on 4/8/24.
//

import SwiftUI

struct InteractionView: View {
    var body: some View {
       // NavigationStack {
//            TabView {
//                
//                VStack {
//                    Text("hello")
//                }
//                .tabItem {
//                    Label("Account", systemImage: "person.circle")
//                }
                ScrollView {
                    VStack {
                       
                        Image("IMG_6030")
                            .resizable()
                            .scaledToFill()
                        HStack {
                            TextField("Text Here", text: .constant(""))
                                .padding()
                                .background(Color(uiColor: .secondarySystemBackground))
                                .cornerRadius(150)
                            Image(systemName: "mic.fill")
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
                                .frame(width: 20)
                                .padding()
                        }
                        .padding()
                        .offset(y: -15)

                    }

                }
                                
                .edgesIgnoringSafeArea(.top)
                
//                .tabItem {
//                    Label("Home", systemImage: "house.fill")
//                }
//                VStack {
//                    Text("hello")
//                }
//                .tabItem {
//                    Label("Pet", systemImage: "pawprint.circle")
//                }
        //    }
            
           // .navigationTitle("FurEver")
     //   }
      
           
        
    }
}

#Preview {
    InteractionView()
}
