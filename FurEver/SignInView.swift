//
//  SignInView.swift
//  FurEver
//
//  Created by Sebastian on 4/7/24.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(Color(uiColor: .secondarySystemBackground))
                        Image(systemName: "chevron.backward")
                    }

                })
                .buttonStyle(PlainButtonStyle())
                .frame(width: 60, height: 60)
                .padding()
                Spacer()
            }
         
            Text("FurEver")
                .font(.custom("Herculanum", size: 45))
//                .bold()
//                .font(.system(size: 45, weight: .bold))
            Image("logo-removebg")
                .resizable()
                .scaledToFit()
                .padding(20)
                .cornerRadius(150)
                .frame(width: 300, height: 300)
            VStack {
                TextField("Username", text: .constant(""))
                    .padding()
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(150)
                    //.border(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
                TextField("Password", text: .constant(""))
                    .padding()
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(150)
                    //.border(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
            }
            .padding(.horizontal, 50)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
                    Text("Sign In")
                        .foregroundStyle(.white)
                        .font(.title2)
                }
            })
            .frame(width: 200, height: 50)
            .padding(40)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Forget Password?")
            })
            
        
          
        }
        .background(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 0.28)))
       
       
        
    }

        
}

#Preview {
    SignInView()
}
