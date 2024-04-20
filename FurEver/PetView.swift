//
//  PetView.swift
//  FurEver
//
//  Created by Sebastian on 4/8/24.
//

import SwiftUI

struct PetView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    NavigationLink(destination: VirtualView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 0.3)))
                            HStack {
                                Image("2edc694e799155f1e31d0e813bd3dcd")
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
                    }
                    .buttonStyle(PlainButtonStyle())
                    
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
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 0.3)))
                        HStack {
                            Image("ae2aa81020ac50aaebc11b4f5818d84")
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
                }
                .padding()
            }
           
            .navigationTitle("Furiends")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        Image(systemName: "plus.circle")
//                    })
                    NavigationLink(destination: CustomizationView()) {
                        Image(systemName: "plus.circle")

                    }
                }
            }
            Spacer()
        }
    }
}

#Preview {
    PetView()
}
