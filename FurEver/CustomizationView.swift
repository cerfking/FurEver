//
//  CustomizationView.swift
//  FurEver
//
//  Created by Sebastian on 4/7/24.
//

import SwiftUI

struct CustomizationView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
             
                VStack(alignment: .leading, spacing: 20) {
                    Text("What is your pet's name?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What breed is your pet?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How old is your pet, and what are its gender and weight?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Does your pet have any distinctive physical features (such as fur color, size, or unique markings)?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How would you describe your pet's personality? (e.g., energetic, shy, curious, quiet)")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What are your pet's favorite activities or games?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How does your pet react to various situations (like meeting strangers or hearing loud noises)?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Does your pet have any particular habits or behavioral patterns?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What are your pet's daily eating habits like? (e.g., amount of food, timing)")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Are there any foods your pet particularly likes or dislikes?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Does your pet have any dietary restrictions or special needs?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How does your pet interact with other animals and people?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What are your pet's preferred places to sleep or rest in your home?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How does your pet handle being alone?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Are there any health issues or concerns that your pet has?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What is your pet's exercise routine?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How do you manage your pet's stress or anxiety, if any?")
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                }
                .padding()
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                            Text("Next")
                                .foregroundStyle(.white)
                        }
                    })
                    .frame( width: 150,height: 50)
                    .padding(.vertical)
                    
                }
                 
                
                .navigationTitle("Customization")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "chevron.backward")
                        })
                    }
                }
                .padding()
                
            }
            .background(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 0.28)))
           
        }
        
    }
}

#Preview {
    CustomizationView()
}
