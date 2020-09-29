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
    var typewords = [String]()
    var index = 0
    
    var choice = ""
  
   
    
    //playerwords är orden som spelaren ska fylla i
    //typewords är beskrivningen av vilket ord spelaren ska fylla i
    //index är sättet att hålla koll på att playerwords och typewords är samma nummer
    
    
    
    
    
    //typewords måste ha ett bestämt antal innan funktionen givemeword() kallas.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerwords.removeAll()
        typewords.removeAll()
        index = 0
        

        //givemeword() ska eventuellt inleda, förutsatt att filen fått informationen från ChooseView, vilken historia som valts och därmed vilken typewords som ska användas.
       
        if(choice == "holiday" ){
            typewords = ["en tid", "en plats", "en karaktär", "ett efternamn", "ett djur", "ett adjektiv",
                         "ett substantiv, bestämd form", "något man säger när man ska gå och bada", "klädesplagg plural",
                         "en kroppsdel", "en annan kroppsdel, bestämd form", "en tidsperiod", "substantiv, plural",
                         "ett adjektiv som slutar på t", "en högtid", "något man äter", "ett adjektiv"]
        }
        
        if(choice == "sorry" ){
            typewords.append("ord" + "ord")
        }
        if(choice == "marry" ){
            typewords.append("ord" + "ord")
        }
        if(choice == "home" ){
            typewords.append("ord" + "ord")
        }
        
        givemeword()
        
    }
    
    func givemeword(){
       
        //Jag behöver ett typewords med plats (index) i listan
        Neededword.text = typewords[index]
        
        
    }
    
    
    @IBAction func addword(_ sender: Any) {
    
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
    
        
        if(index == typewords.count) {
        finishstory()
        }
        else{
            givemeword()
        }
    }
        
    func finishstory(){
        print(playerwords)
        //Skicka vidare full array playerwords till läs-sida?
        performSegue(withIdentifier: "readstory", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "readstory"){
            var dest = segue.destination as! ReadView
            dest.storywords = playerwords
            dest.story = choice
        }
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
   


}
