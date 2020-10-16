//
//  Musicplayer.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-10-16.
//

import Foundation
import AVFoundation

class MusicPlayer {

    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?

    func startBackgroundMusic() {
        if let bundle = Bundle.main.path(forResource: "Music", ofType: "mp3") {
                    let backgroundMusic = NSURL(fileURLWithPath: bundle)
                    do {
                        audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                        guard let audioPlayer = audioPlayer else { return }
                        audioPlayer.numberOfLoops = -1
                        audioPlayer.prepareToPlay()
                        audioPlayer.play()
                        print("Music playing")
                        } catch {
                            print("error")
                        }
            
                    
        }
    }
    
    func buttonsound(){
        if let bundle = Bundle.main.path(forResource: "Woosh", ofType: "mp3") {
                    let Tap = NSURL(fileURLWithPath: bundle)
                    do {
                        
                        audioPlayer = try AVAudioPlayer(contentsOf:Tap as URL)
                        guard let audioPlayer = audioPlayer else { return }
                        audioPlayer.prepareToPlay()
                        audioPlayer.play()
                        print("Button sound")
                        } catch {
                            print("error")
                        }
        
    }
    
        
    }

}
