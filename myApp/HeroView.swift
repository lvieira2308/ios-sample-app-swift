//
//  HeroView.swift
//  myApp
//
//  Created by Luis Vieira on 30/01/25.
//

import SwiftUI

struct HeroView: View {
    let selectedCat: String
    @State private var rating: Int = 0
    
    var body: some View {
        let hero = HeroData.heroes[selectedCat] ?? Hero(name: "Unknown", age: 0, superPower: "None")
        
        NavigationStack {
            VStack {
                Text("Hero Profile: \(selectedCat)")
                    .font(.largeTitle)
                    .padding()

                Image(selectedCat == "Pipo" ? "pipoProfile" : "neneProfile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                    .accessibilityIdentifier("catProfileImage_\(selectedCat)")
                    
                Spacer()
                
                Form {
                    Section(header: Text("Hero Details")) {
                        HStack {
                            Text("Name")
                            Spacer()
                            Text(hero.name)
                                .foregroundColor(.gray)
                                .accessibilityIdentifier("catNameText")
                        }
                        HStack {
                            Text("Age")
                            Spacer()
                            Text("\(hero.age) years")
                                .foregroundColor(.gray)
                                .accessibilityIdentifier("catAgeText")
                        }
                        HStack {
                            Text("Super Power")
                            Spacer()
                            Text(hero.superPower)
                                .foregroundColor(.gray)
                                .accessibilityIdentifier("catSuperPowerText")
                        }
                    }
                }
                .disabled(true)
                
                Spacer()
                
                Section(header: Text("Rate this Hero")) {
                    HStack {
                        ForEach(1...5, id: \.self) { star in
                            Image(systemName: star <= rating ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                                .onTapGesture {
                                    rating = star
                                    saveRating(for: selectedCat, rating: star)
                                }
                                
                        }
                    }
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)

                    Text("Rating: \(rating) / 5")
                        .foregroundColor(.gray)
                        .padding(.top, 5)
                }
            }
            .onAppear {
                rating = loadRating(for: selectedCat)
            }
        }
    }
    
    private func saveRating(for hero: String, rating: Int) {
        UserDefaults.standard.set(rating, forKey: "rating_\(hero)")
    }

    private func loadRating(for hero: String) -> Int {
        return UserDefaults.standard.integer(forKey: "rating_\(hero)")
    }
}

#Preview {
    HeroView(selectedCat: "Pipo")
}
