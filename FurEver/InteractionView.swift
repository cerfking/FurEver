//
//  InteractionView.swift
//  FurEver
//
//  Created by Sebastian on 4/8/24.
//

import SwiftUI
import SwiftSpeech
struct InteractionView: View {
    @State var text: String = "Hold to Speak"
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
                            TextField(text, text: .constant(""))
                                .padding()
                                .background(Color(uiColor: .secondarySystemBackground))
                                .cornerRadius(150)
                            SwiftSpeech.RecordButton()                                        // 1. The View Component
                                .swiftSpeechRecordOnHold()  // 2. The Functional Component
                                .onRecognizeLatest(update: $text)
                                
                           
                        }
                        .padding()
                        .offset(y: -15)

                    }

                }
                .onAppear {
                    SwiftSpeech.requestSpeechRecognitionAuthorization()
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
