//
//  TestView.swift
//  FurEver
//
//  Created by Sebastian on 4/8/24.
//

import SwiftUI

struct TestView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Image("logo-removebg1") // Replace "logo" with the name of your logo image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()

                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Sign In") {
                    // Handle sign in action
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)

                Spacer()

                HStack {
                    Text("New here?")
                    NavigationLink("Sign Up", destination: SignUpFormView())
                }
                .padding()
            }
            .padding()
            .navigationTitle("Sign In")
        }
    }
}

struct SignUpFormView: View {
    // Define state variables and body for sign-up form
    var body: some View {
        Text("Sign Up Form")
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
#Preview {
    TestView()
}
