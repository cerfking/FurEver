//
//  HomeView.swift
//  FurEver
//
//  Created by Sebastian on 4/7/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
     //   NavigationStack {
            TabView {
                PetView()
                .tabItem {
                    Label("Pet", systemImage: "pawprint.circle")
                }
//                VStack {
//                   
//                    Image("IMG_6030")
//                        .resizable()
//                        .scaledToFill()
//                    
//                    
//                }
//                .edgesIgnoringSafeArea(.top)
                InteractionView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                
                AccountView()
                
                .tabItem {
                    Label("Account", systemImage: "person.circle")
                    //Label("Pet", systemImage: "pawprint.circle")
                }
            }
            
           // .navigationTitle("FurEver")
      //  }
      
           
        
    }
}

#Preview {
    HomeView()
}
