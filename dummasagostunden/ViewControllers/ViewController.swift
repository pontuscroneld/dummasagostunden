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
    
    
    @IBOutlet weak var story: UILabel!
    
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
        
        
        
        if(index != typewords.count-1){
        needword()
        }
        if(index == typewords.count-1) {
            
            story.text = "Det var en gång ett " + storywords[0] + " som hette " + storywords[1] + " och bodde i " + storywords[2] + "."
            
        
        
        //Ett försök att skicka över info till nästa sida
        // if(index == 3){
           // self.finalwords = storywords
           //performSegue(withIdentifier: "gonext" , sender: self)
}
        
        
}
       // if(index > 3){
        
          //  needword()

    
    @IBAction func reset(_ sender: Any) {
        story.text = ""
        index = 0
        needword()
    }
    
    
    
          
    
   
    
    //Ta bort skrivbordet
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }

        
          //     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         //   let vc = segue.destination as! StoryView
         //   vc.givemewords = finalwords

    
           

}
