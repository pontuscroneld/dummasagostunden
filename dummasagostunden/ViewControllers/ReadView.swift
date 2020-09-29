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
    var storywords = [String]()
    var story = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if(story == "holiday"){
            thestory.text = "För \(storywords[0]) sen var jag på semester i \(storywords[1]) med min kompis \(storywords[2]) och mitt husdjur \(storywords[3]), en tam \(storywords[4]). Min kompis och jag bodde på ett hotell med en \(storywords[5]) utsikt över \(storywords[6]).- \(storywords[7])? sa \(storywords[2]) och slängde mina \(storywords[8]) mot mig. Jag försökte fånga dem med en \(storywords[9]) men missade och de träffade mig rakt i \(storywords[10])  Vi skrattade i \(storywords[11]) och sen gick vi ner till stranden. Vågorna var höga som \(storywords[12]) och vattnet var \(storywords[13]). Men \(storywords[2])  sprang i vattnet och badade som om det var \(storywords[14]). Jag satt kvar på stranden och matade \(storywords[3]) med \(storywords[15]). Vi såg ut över solen som gick ner över havet och för första gången på flera veckor kände jag mig riktigt \(storywords[16])."
            
            read()
        }
        
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
