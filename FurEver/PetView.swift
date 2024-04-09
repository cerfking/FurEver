//
//  PetView.swift
//  FurEver
//
//  Created by Sebastian on 4/8/24.
//

import SwiftUI

struct PetView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 0.3)))
                    HStack {
                        Image("4704933f8f2175a39f467d02b6b5a546")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120)
                            .padding()
                            
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Name:")
                                    .bold()
                                Text("Sprite")
                            }
                            HStack {
                                Text("Address Form:")
                                    .bold()
                                Text("Daddy")
                            }
                            HStack {
                                Text("Sex:")
                                    .bold()
                                Text("Male")
                            }
                            HStack {
                                Text("Breed:")
                                    .bold()
                                Text("Husky")
                            }
                        }
                        
                       
                    }
                }
                .frame(height: 200)
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 0.3)))
                    HStack {
                        Image("GR")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120)
                            .padding()
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Name:")
                                    .bold()
                                Text("Cola")
                            }
                            HStack {
                                Text("Address Form:")
                                    .bold()
                                Text("Daddy")
                            }
                            HStack {
                                Text("Sex:")
                                    .bold()
                                Text("Female")
                            }
                            HStack {
                                Text("Breed:")
                                    .bold()
                                Text("Golden Retriever")
                            }
                        }
                        
                       
                    }
                }
                .frame(height: 200)
                
            }
            .padding()
            .navigationTitle("Furiends")
            Spacer()
        }
    }
}

#Preview {
    PetView()
}
