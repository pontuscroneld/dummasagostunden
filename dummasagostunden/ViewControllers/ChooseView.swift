//
//  ChooseView.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-09-24.
//

import UIKit

class ChooseView: UIViewController {

    var thechoice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func holidaychoice(_ sender: Any) {
        thechoice = "holiday"
        EffectPlayer.shared.buttonsound()
        performSegue(withIdentifier: "storychosen", sender: nil)
        
        
    }
    @IBAction func sorrychoice(_ sender: Any) {
        thechoice = "sorry"
        EffectPlayer.shared.buttonsound()
        performSegue(withIdentifier: "storychosen", sender: nil)
        
    }
    @IBAction func marrychoice(_ sender: Any) {
        thechoice = "marry"
        EffectPlayer.shared.buttonsound()
        performSegue(withIdentifier: "storychosen", sender: nil)
        
    }
    @IBAction func homechoice(_ sender: Any) {
        thechoice = "home"
        EffectPlayer.shared.buttonsound()
        performSegue(withIdentifier: "storychosen", sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "storychosen"){
            var dest = segue.destination as! StoryView
            dest.choice = thechoice
        }
    }
    
    
    @IBAction func goback(_ sender: Any) {
        EffectPlayer.shared.buttonsound()
        presentingViewController?.dismiss(animated: false, completion: nil)
    }
    
}
