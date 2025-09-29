//
    // Project: SoundEffectsExample
    //  File: SoundManager.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import AVFoundation

//class to manage sound effects & BGM

class SoundManager{
    static let shared = SoundManager()
    private var soundEffectPlayer: AVAudioPlayer?
    private var backgroundMusicPlayer: AVAudioPlayer?
    
    func playImportedSound(named soundName: String){
        if let url = Bundle.main.url(forResource: soundName, withExtension: ".mp3"){
            do {
                soundEffectPlayer = try AVAudioPlayer(contentsOf: url)
                soundEffectPlayer?.play()
            } catch{
                print("Error playing Sound \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found \(soundName)")
        }
    }
    
    // plays BGM when on
    
    func toggleBackgroundMusic(isOn: Bool){
        if isOn{
            if let url = Bundle.main.url(forResource: "background-music", withExtension: ".mp3"){
                do{
                    backgroundMusicPlayer = try AVAudioPlayer(contentsOf: url)
                    backgroundMusicPlayer?.numberOfLoops = -1 // loops infinitely
                    backgroundMusicPlayer?.volume = 0.5 //adjusts volume
                    backgroundMusicPlayer?.play()
                    
                } catch{
                    print("error playing BGM: \(error.localizedDescription)")
                }
            }
        }
            else { backgroundMusicPlayer?.stop()
            }
        }
        
    }
    

