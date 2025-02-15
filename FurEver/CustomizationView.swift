//
//  CustomizationView.swift
//  FurEver
//
//  Created by Sebastian on 4/7/24.
//

import SwiftUI
import LoadingButton
struct CustomizationView: View {
    @State private var isLoading = false
    @State private var navigateToNext = false
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
             
                VStack(alignment: .leading, spacing: 20) {
                    Text("What is your pet's name?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What breed is your pet?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How old is your pet, and what are its gender and weight?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Does your pet have any distinctive physical features (such as fur color, size, or unique markings)?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How would you describe your pet's personality? (e.g., energetic, shy, curious, quiet)")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What are your pet's favorite activities or games?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How does your pet react to various situations (like meeting strangers or hearing loud noises)?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Does your pet have any particular habits or behavioral patterns?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What are your pet's daily eating habits like? (e.g., amount of food, timing)")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Are there any foods your pet particularly likes or dislikes?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Does your pet have any dietary restrictions or special needs?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How does your pet interact with other animals and people?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What are your pet's preferred places to sleep or rest in your home?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How does your pet handle being alone?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("Are there any health issues or concerns that your pet has?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("What is your pet's exercise routine?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                    Text("How do you manage your pet's stress or anxiety, if any?")
                        .padding(.leading)
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color(uiColor: .secondarySystemBackground))
                        .cornerRadius(150)
                }
                .padding()
                VStack {
                    LoadingButton(action: {
                        startLoad()
                        // Your Action here
                           }, isLoading: $isLoading) {
                             
                               Text("Next").foregroundColor(Color.white)
                           }
                           .frame( width: 150,height: 50)
                           .padding(.vertical)
                    NavigationLink(destination: TestView(), isActive: $navigateToNext) {
                                           EmptyView()
                                       }
                    
                }
            
                .navigationTitle("Customization")
//                .toolbar {
//                    ToolbarItem(placement: .navigationBarLeading) {
//                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                            Image(systemName: "chevron.backward")
//                        })
//                    }
//                }
                .padding()
                
                
            }
            .background(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 0.28)))
           
        }
        
    }
    func startLoad() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
            navigateToNext = true // Trigger navigation
            print("done")
        }
    }
}

#Preview {
    CustomizationView()
}
