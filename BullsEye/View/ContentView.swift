//
//  ContentView.swift
//  BullsEye
//
//  Created by Oğuz Karatoruk on 15.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50
    
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Text("🎯 PUT THE BULLSEYE AS CLOSE AS YOU 🎯")
                        .bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.footnote)
                    Text(String(game.target))
                        .font(.largeTitle)
                        .bold()
                        .kerning(2.0)
                    HStack {
                        Text("1")
                            .padding(.leading, 20)
                            .frame(width: 50)
                        
                        Slider(value: $sliderValue, in: 1.0...100.0)
                            .padding([.leading, .trailing], 20)
                        
                        Text("100")
                            .bold()
                            .padding(.trailing, 20)
                            .frame(width: 50)
                    }
                    Button(action: {
                        self.alertIsVisible = true
                    }) {
                        Text("Hit Me".uppercased())
                            .bold()
                    }
                    .padding(20)
                    .background(ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    })
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .font(.title3)
                    .alert(isPresented: $alertIsVisible, content: {
                        return Alert(
                            title: Text("Hello There"),
                            message: Text("The slider's value is \(Int(self.sliderValue))\n You scored \(game.points(sliderValue: Int(self.sliderValue)))"),
                            dismissButton: .default(Text("Awesome!")))
                    })
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewLayout(.fixed(width: 812, height: 375))
        }
    }
}
