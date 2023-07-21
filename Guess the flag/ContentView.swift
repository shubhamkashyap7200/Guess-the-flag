//
//  ContentView.swift
//  Guess the flag
//
//  Created by Shubham on 21/07/23.
//

import SwiftUI

struct ContentView: View {
    func executeButtonAction(){
        print("OUTPUT:: Clicked here")
    }
    
    var body: some View {
        
        VStack {
            Button {
                print("Buttn was tapped!")
            } label: {
                Label("Inbox", systemImage: "mail.fill")
                    .font(.system(size: 32.0))
                
//                Image(systemName: "mail.fill")
//                Text("Press me")
//                    .padding()     
//                    .foregroundStyle(.white)
//                    .background(Color.red)
            }
            
        }
        
//        VStack(spacing: 20.0) {
//            Button("Button 1") {}
//                .buttonStyle(.bordered)
//            
//            Button("Button 2") {}
//                .buttonStyle(.borderedProminent)
//
//            Button("Button 3") {}
//                .buttonStyle(.borderless)
//
//            Button("Button 4") {}
//                .buttonStyle(.plain)
//
//            Button("Button 5", role: .destructive) {}
//                .buttonStyle(.bordered)
//
//            Button("Button 6", role: .destructive) {}
//                .buttonStyle(.borderedProminent)
//
//            Button("Button 7", role: .destructive) {}
//                .buttonStyle(.borderedProminent)
//                .tint(.mint)
//        }
        
        
        
        
//        ZStack {
//            AngularGradient(colors: [Color.purple, Color.indigo, Color.blue, Color.green, Color.yellow, Color.orange, Color.red], center: .center, angle: Angle(degrees: 0.0))
//            
////            RadialGradient(colors: [Color.white, Color.pink], center: .center, startRadius: 25.0, endRadius: 150.0)
//            
//            
////            LinearGradient(stops: [
////                Gradient.Stop(color: .white, location: 0.45),
////                Gradient.Stop(color: .black, location: 0.55),
////            ], startPoint: .topLeading, endPoint: .bottomTrailing)
//        }
//        .ignoresSafeArea()
        
        
        
        
        
        
//        ZStack {
//            VStack(spacing: 0) {
//                Color.blue
//                Color.orange
//            }
//            
//            Text("My Content here")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//                .cornerRadius(8.0)
//        }
//        .ignoresSafeArea()
        
        
        
        
        
        
        
//        ZStack {
//            Color.init(cgColor: CGColor(red: 0.25, green: 0.75, blue: 0.4, alpha: 1))
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            
//            Text("My content")
//                .foregroundColor(.white)
//                .font(.system(size: 36.0))
//        }
        
        
        
        
        
//        Group {
//            VStack {
//                HStack {
//                    Color.red .frame(width: 30, height: 30)
//                    Color.orange .frame(width: 30, height: 30)
//                    Color.green .frame(width: 30, height: 30)
//                }
//                
//                HStack {
//                    Color.orange .frame(width: 30, height: 30)
//                    Color.blue .frame(width: 30, height: 30)
//                    Color.yellow .frame(width: 30, height: 30)
//                }
//                
//                HStack {
//                    Color.red .frame(width: 30, height: 30)
//                    Color.orange .frame(width: 30, height: 30)
//                    Color.green .frame(width: 30, height: 30)
//                }
//            }
//        }
    }
}

#Preview {
    ContentView()
}
