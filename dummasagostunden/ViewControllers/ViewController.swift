//
//  ViewController.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-09-17.
//

import UIKit

class ViewController: UIViewController {

    //När man har lagt till det sista ordet crashar programmet.
    
    
    
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var donebutton: UIButton!
    @IBOutlet weak var ineed: UILabel!
    
    //Arrayen med ord som jag hämtar från användaren
    var storywords = [String]()
    var finalwords = [String]()
    
    //Lämnar en ledig plats för att undvika crash
    //Typewords är typen av ord som användaren ska fylla i
    let typewords = ["ett djur", "ett namn", "en plats", ""]
   
    
    //En variabel för att få arrayplatser att få samma index
    var index = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
      needword()
    }
    
    func needword()
    {
        
        //Jag behöver ett typewords med plats (wordturn) i listan
        ineed.text = typewords[index]
        
    }
    
    @IBAction func addword(_ sender: Any) {
        
        //Om platsen är tom kan man inte lägga till
        if(textfield.text == "")
        {
            return
        }
        //Det som står i textfältet läggs till i arrayen på plats wordturn, och ger sedan wordturn +1 för att gå vidare till nästa ineed ord
        storywords.append(textfield.text!)
        textfield.text = ""
        index += 1
        
        
        
        //Ett försök att skicka över info till nästa sida
        if(index == 3){
            self.finalwords = storywords
            performSegue(withIdentifier: "gonext" , sender: self) //Kanske ändra sender till nil
        
        if(index > 3){
        
            needword()
        }
        
    
    
          
    }
   
    

}
        
               override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as! StoryView
            vc.givemewords = finalwords
}
    
           
}
