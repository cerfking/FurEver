//
//  TestView.swift
//  FurEver
//
//  Created by Sebastian on 4/8/24.
//

import SwiftUI
import LoadingButton

struct TestView: View {
    @State private var isLoading = false
    @State private var navigateToNext = false
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        .frame(height: 250)
                    Text("Upload a photo of your fur friend")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack {
                        Circle()
                            .foregroundColor(Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                            .foregroundColor(.white)
                    }
                })
                .frame(width: 100)
                .padding()
                LoadingButton(action: {
                    startLoad()
                    // Your Action here
                }, isLoading: $isLoading, style: LoadingButtonStyle(backgroundColor: Color(uiColor: UIColor(red: 252/255, green: 176/255, blue: 68/255, alpha: 1.0)))) {
                         
                           Text("Next").foregroundColor(Color.white)
                       }
                       .frame( width: 150,height: 50)
                       .padding(.vertical)
                       .foregroundColor(.orange)
                NavigationLink(destination: HomeView(), isActive: $navigateToNext) {
                                       EmptyView()
                                   }
              
            }
            .padding()
           // .navigationTitle("Upload")
//            .toolbar {
//                
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        Text("Save")
//                    })
//                }
//            }
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
    TestView()
}
