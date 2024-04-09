//
//  AccountView.swift
//  FurEver
//
//  Created by Sebastian on 4/7/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("4704933f8f2175a39f467d02b6b5a546")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 125, height: 125)
                    .padding()
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Name: ")
                        .bold()
                    Text("Schromeo")
                }
                .padding()
                HStack {
                    Text("Email: ")
                        .bold()
                    Text("cheng.yis@northeastern.edu")
                }
                .padding()
                HStack {
                    Text("Bio: ")
                        .bold()
                    Text("HelloWorld")
                }
                .padding()
               
            }
            .padding()
            .navigationTitle("Account")
            
        }
        
       
        
    }
}

#Preview {
    AccountView()
}
