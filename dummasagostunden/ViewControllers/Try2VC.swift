//
//  Try2VC.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-10-08.
//

import UIKit

class Try2VC: UIViewController {

    var thechoice = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func holidaychoice(_ sender: Any) {
        thechoice = "holiday"
        EffectPlayer.shared.buttonsound()
        segue()
    
        
    }
    
    @IBAction func sorrychoice(_ sender: Any) {
        thechoice = "sorry"
        EffectPlayer.shared.buttonsound()
        segue()
    }
    
    @IBAction func marrychoice(_ sender: Any) {
        thechoice = "marry"
        EffectPlayer.shared.buttonsound()
        segue()
    }
    
    @IBAction func homechoice(_ sender: Any) {
        thechoice = "home"
        EffectPlayer.shared.buttonsound()
        segue()
        
    }
    
    
    @IBAction func anthemchoice(_ sender: Any) {
        thechoice = "anthem"
        EffectPlayer.shared.buttonsound()
        segue()
    }
    
    @IBAction func workchoice(_ sender: Any) {
        thechoice = "work"
        EffectPlayer.shared.buttonsound()
        segue()
    }
    
    
    @IBAction func teacher(_ sender: Any) {
        thechoice = "teacher"
        EffectPlayer.shared.buttonsound()
        segue()
    }
    
    
    @IBAction func test(_ sender: Any) {
        thechoice = "test"
        EffectPlayer.shared.buttonsound()
        segue()
    }
    
    func segue(){
        performSegue(withIdentifier: "storychosen", sender: nil)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "storychosen"){
            var dest = segue.destination as! StoryView
            dest.choice = thechoice
        }
    }
   
    @IBAction func dismiss(_ sender: Any) {
        
        EffectPlayer.shared.buttonsound()
        presentingViewController?.dismiss(animated: true, completion: nil)
    
    
    }
    
    
    @IBAction func mutebutton(_ sender: Any) {
        MusicPlayer.shared.pausemusic()
        
    }
    
}
