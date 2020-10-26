//
//  StartView.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-09-23.
//

import UIKit


class StartView: UIViewController {
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var logotype: UIImageView!
    var musicisplaying = true
    
    @IBOutlet weak var MutingImage: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        MusicPlayer.shared.startBackgroundMusic()
        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func buttonstart(_ sender: Any) {
        //MusicPlayer.shared.buttonsound()
        //Skickas till ChooseView
        EffectPlayer.shared.buttonsound()
        
        
    }
    
    @IBAction func mutebutton(_ sender: Any) {
        MusicPlayer.shared.pausemusic()
        }
    
    @IBAction func becomebutton(_ sender: Any) {
        EffectPlayer.shared.buttonsound()
    }
    
    @IBAction func knowmorebutton(_ sender: Any) {
        EffectPlayer.shared.buttonsound()
    }
    
        
    
}
    
   
    
    

