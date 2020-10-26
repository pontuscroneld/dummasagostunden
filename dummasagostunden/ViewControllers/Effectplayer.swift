//
//  Effectplayer.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-10-26.
//

import Foundation
import AVFoundation

class EffectPlayer {

    static let shared = EffectPlayer()
    var soundPlayer: AVAudioPlayer?

    func buttonsound() {
        if let bundle = Bundle.main.path(forResource: "Woosh", ofType: "mp3") {
                    let backgroundMusic = NSURL(fileURLWithPath: bundle)
                    do {
                        soundPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                        guard let soundPlayer = soundPlayer else { return }
                        soundPlayer.prepareToPlay()
                        soundPlayer.play()
                       
                        print("Effect playing")
                        } catch {
                            print("error")
                        }
            
                    
        }
    }
}
