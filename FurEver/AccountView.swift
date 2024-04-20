//
//  AccountView.swift
//  FurEver
//
//  Created by Sebastian on 4/7/24.
//

import SwiftUI
import LoadingButton

struct AccountView: View {
    @State private var isLoading = false
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
                    TextField("Schromeo", text: .constant("Schromeo"))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                   // Text("Schromeo")
                }
                .padding()
                HStack {
                    Text("Email: ")
                        .bold()
                    TextField("", text: .constant("cheng.yis@northeastern.edu"))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                   // Text("cheng.yis@northeastern.edu")
                }
                .padding()
                HStack {
                    Text("Bio: ")
                        .bold()
                    TextField("", text: .constant("HelloWorld"))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    //Text("HelloWorld")
                }
                .padding()
                
               
               
            }
            .padding()
            VStack {
                LoadingButton(action: {
                    startLoad()
                    // Your Action here
                       }, isLoading: $isLoading) {
                         
                           Text("Save").foregroundColor(Color.white)
                       }
                       .frame( width: 150,height: 50)
                       .padding(.vertical)
            }
            .navigationTitle("Account")
            
           
           
            
            
        }
        
        
       
        
    }
    func startLoad() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
         
            print("done")
        }
    }
}

#Preview {
    AccountView()
}
