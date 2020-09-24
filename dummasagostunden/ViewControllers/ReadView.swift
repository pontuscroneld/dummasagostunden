//
//  ReadView.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-09-24.
//

import UIKit
import AVFoundation

class ReadView: UIViewController {
    
    
    @IBOutlet weak var thestory: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func read(){
    let voice = AVSpeechSynthesisVoice(language: "sv-SE")
          let toSay = AVSpeechUtterance(string: thestory.text!)
          toSay.voice = voice
          let spk = AVSpeechSynthesizer()
          spk.speak(toSay)
    }

}
