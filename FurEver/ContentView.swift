//
//  ContentView.swift
//  FurEver
//
//  Created by Sebastian on 4/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("FurEver")
    //                .bold()
    //                .font(.system(size: 45, weight: .bold))
                    .font(.custom("Herculanum", size: 45))
                Image("FurEver")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
               
                NavigationLink(destination: SignInView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
                        Text("Sign In")
                            .foregroundStyle(.black)
                            .font(.title2)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                .frame(height: 50)
                .padding(.horizontal, 40)
                NavigationLink(destination: SignUpView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
                        Text("Sign Up")
                            .foregroundStyle(.black)
                            .font(.title2)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                .frame(height: 50)
                .padding(40)
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 40)
//                            .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
//                        Text("Sign Up")
//                            .foregroundStyle(.black)
//                            .font(.title2)
//                    }
//                })
//                .frame(height: 50)
//                .padding(40)
               
            }
            .padding()
        }
      
    }
    
}



#Preview {
    ContentView()
}
