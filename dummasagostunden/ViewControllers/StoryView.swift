//
//  StoryView.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-09-17.
//

import UIKit

class StoryView: UIViewController {

    
    @IBOutlet weak var Textfield: UITextField!
    @IBOutlet weak var Neededword: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
   

}
