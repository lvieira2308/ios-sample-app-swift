import SwiftUI

struct ExploreView: View {
    @State private var selectedOption = "Pipo"
    
    let options = ["Pipo", "Nenê"]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("cosmoCats")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .accessibilityIdentifier("cosmoCatsImage")

                VStack {
                    Text("Choose your cat!")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .accessibilityIdentifier("spaceCatHelloText")

                    Picker("Choose your cat", selection: $selectedOption) {
                        ForEach(options, id: \.self) { option in
                            Text(option)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(8)
                    .padding()

                    Image(selectedOption == "Pipo" ? "pipo" : "nene")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .accessibilityIdentifier("selectedCatImage_\(selectedOption)")
                        .padding(.top, 10)

                    Spacer()
                    
                    NavigationLink(destination: HeroView(selectedCat: selectedOption)) {
                        Text("Go to Hero Profile")
                            .font(.headline)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .accessibilityIdentifier("goToHeroViewButton")

                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
