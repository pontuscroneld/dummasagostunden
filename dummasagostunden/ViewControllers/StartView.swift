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
        MusicPlayer.shared.audioPlayer?.volume = 0.1
        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func buttonstart(_ sender: Any) {
        MusicPlayer.shared.buttonsound()
        //Skickas till ChooseView
        
        
    }
    
    @IBAction func mutebutton(_ sender: Any) {
        if(musicisplaying == true){
            MusicPlayer.shared.audioPlayer?.stop()
            musicisplaying = false
        }
        else{
            MusicPlayer.shared.startBackgroundMusic()
            musicisplaying = true
        }
        
    }
    
    @IBAction func button(_ sender: Any) {
        
        MusicPlayer.shared.buttonsound()
    }
    
    
}
