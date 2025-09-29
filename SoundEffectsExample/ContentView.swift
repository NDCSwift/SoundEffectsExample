//
    // Project: SoundEffectsExample
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI
import AudioToolbox

struct ContentView: View {
    @State private var isMusicOn = false
    
    
    var body: some View {
        VStack {
           Text("Play sounds and BGM 🎶")
                .font(.headline)
            
            Button(action: {
                SoundManager.shared.playImportedSound(named: "huh")
            }){
                Text("Play Imported Sound - HUH")
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.black)
                    .cornerRadius(25)
            }
            
            Button(action: {
                AudioServicesPlaySystemSound(1331)
            }){
                Text("Play system Sound New Mail")
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.green)
                    .cornerRadius(25)
                
            }
            
            Toggle("BGM enabled?", isOn: $isMusicOn)
                .padding()
                .onChange(of: isMusicOn){
                    newValue in
                    SoundManager.shared.toggleBackgroundMusic(isOn: newValue)
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
