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
        segue()
        
    }
    
    @IBAction func sorrychoice(_ sender: Any) {
        thechoice = "sorry"
        segue()
    }
    
    @IBAction func marrychoice(_ sender: Any) {
        thechoice = "marry"
        segue()
    }
    
    @IBAction func homechoice(_ sender: Any) {
        thechoice = "home"
        segue()
        
    }
    
    
    @IBAction func anthemchoice(_ sender: Any) {
        thechoice = "anthem"
        segue()
    }
    
    @IBAction func workchoice(_ sender: Any) {
        thechoice = "work"
        segue()
    }
    
    
    @IBAction func teacher(_ sender: Any) {
        thechoice = "teacher"
        segue()
    }
    
    
    @IBAction func test(_ sender: Any) {
        thechoice = "test"
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
    
        presentingViewController?.dismiss(animated: true, completion: nil)
    
    
    }
    
}
