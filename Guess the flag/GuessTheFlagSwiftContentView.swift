//
//  GuessTheFlagSwiftContentView.swift
//  Guess the flag
//
//  Created by Shubham on 21/07/23.
//

import SwiftUI

struct GuessTheFlagSwiftContentView: View {
    @State private var currentCountOfQuestion = 1
    @State private var userScore = 0
    @State private var showScore = false
    @State private var shouldResetGame = false
    @State private var scoreTitle = ""
    @State private var countries = ["Estonia", "France", "Russia", "UK", "US", "Ireland", "Germany", "Nigeria", "Poland", "Spain", "Italy"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [.init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3), Gradient.Stop(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)],center: .top, startRadius: 200.0, endRadius: 700.0)
                .ignoresSafeArea()
            
            //            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
            //                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                VStack(spacing: 15.0) {
                    VStack() {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.regular))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.bold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            // flag is tapped
                            flagTapped(number)
                            
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .cornerRadius(8.0)
                                .shadow(radius: 5.0)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20.0)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                
                Spacer()
                Spacer()
                
                Text("Score: \(userScore)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showScore) {
            if shouldResetGame == false {
                Button("Continue", action: askQuestion)
            } else {
                Button("Restart game") {
                    currentCountOfQuestion = 1
                    userScore = 0
                    shouldResetGame = false
                    countries.shuffle()
                    print("LOGGING")
                }
            }
        } message: {
            Text("Your score in \(userScore)")
        }
    }
    
    func flagTapped(_ number: Int) {
        currentCountOfQuestion += 1
        
        if currentCountOfQuestion < 9 {
            if number == correctAnswer {
                scoreTitle = "Correct"
                userScore += 1
            } else {
                scoreTitle = "Wrong! That’s the flag of \(countries[number])"
                
                if userScore == 0 {
                    userScore = 0
                } else {
                    userScore -= 1
                }
            }
            
            showScore = true
        }
        else {
            if number == correctAnswer {
                scoreTitle = "You have completed the game"

                userScore += 1
            } else {
                scoreTitle = "Wrong! That’s the flag of \(countries[number])\n You have completed the game"

                if userScore == 0 {
                    userScore = 0
                } else {
                    userScore -= 1
                }
            }
            
            shouldResetGame = true
            showScore = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    GuessTheFlagSwiftContentView()
}
