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
        performSegue(withIdentifier: "storychosen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "storychosen"){
            var dest = segue.destination as! StoryView
            dest.choice = thechoice
        }
    }

}
