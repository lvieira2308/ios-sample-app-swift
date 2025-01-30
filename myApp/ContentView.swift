//
//  ContentView.swift
//  myApp
//
//  Created by Luis Vieira on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isAuthenticated: Bool = false
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 230/255, green: 225/255, blue: 217/255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Hello, Space cat!")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(.red)
                        .accessibilityIdentifier("spaceCatHelloText")
                    Image("spaceCat")
                        .resizable()
                        .scaledToFit()
                        .accessibilityIdentifier("spaceCatImage")

                    TextField("Username", text: $username)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .padding(.horizontal, 40)
                        .accessibilityIdentifier("usernameField")

                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .padding(.horizontal, 40)
                        .accessibilityIdentifier("passwordField")
                    

                    Button(action: {
                        authenticateUser()
                    }) {
                        Text("Explore the cosmos!")
                            .font(.headline)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .accessibilityIdentifier("goToExploreViewButton")
                    .padding()
                    
                    
                }
                .alert("Login Failed", isPresented: $showAlert) {
                    Button("OK", role: .cancel) { }
                        .accessibilityIdentifier("okAlertButton")
                } message: {
                    Text("Invalid username or password. Try again!")
                        .accessibilityIdentifier("invalidCredentialsMessage")
                }
                .navigationDestination(isPresented: $isAuthenticated) {
                    ExploreView()
                }
            }
        }
    }
    
    private func authenticateUser() {
        if username == "admin" && password == "Admin123" {
            isAuthenticated = true
        } else {
            showAlert = true
        }
    }
}

#Preview {
    ContentView()
}
