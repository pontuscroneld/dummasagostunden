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
    
    var playerwords = [String]()
    let typewords = [String]()
    var index = 0
    
    var thetodoinfo = [String: Any]()
   
    
    //playerwords är orden som spelaren ska fylla i
    //typewords är beskrivningen av vilket ord spelaren ska fylla i
    //index är sättet att hålla koll på att playerwords och typewords är samma nummer
    
    
    
    
    
    //typewords måste ha ett bestämt antal innan funktionen givemeword() kallas.
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //givemeword() ska eventuellt inleda, förutsatt att filen fått informationen från ChooseView, vilken historia som valts och därmed vilken typewords som ska användas.
        
    }
    
    func givemeword(){
       
        //Jag behöver ett typewords med plats (index) i listan
        Neededword.text = typewords[index]
        
        
    }
    
    
    
    func addword(){
    
        if(Textfield.text == "")
        {
            return
        }
    //Det som står i textfältet läggs till i arrayen på plats wordturn, och ger sedan wordturn +1 för att gå vidare till nästa ineed ord
        playerwords.append(Textfield.text!)
        Textfield.text = ""
        index += 1
        checkifdone()
    
        }
    
    func checkifdone(){
    
        if(index != typewords.count-1){
        givemeword()
        }
        if(index == typewords.count-1) {
        readstory()
        }
    }
        
    func readstory(){
        
        //Skicka vidare full array playerwords till läs-sida?
     
    }
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
   

}
