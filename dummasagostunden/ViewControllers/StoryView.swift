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
    
    @IBOutlet weak var explainview: UIView!
    
    var playerwords = [String]()
    var typewords = [String]()
    var rhyme1 = ""
    var rhyme2 = ""
    var index = 0
    
    var choice = ""
    var progressrate = Progress(totalUnitCount: 0)
    
    @IBOutlet weak var progressview: UIProgressView!
  
    
    
    
    
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
            typewords = ["en tidsperiod", "en plats", "en påhittad karaktär", "ett efternamn", "ett djur", "ett adjektiv",
                         "ett substantiv, bestämd form", "något man säger när man ska gå och bada", "klädesplagg plural",
                         "en kroppsdel", "en annan kroppsdel, bestämd form", "en tidsperiod", "substantiv, plural",
                         "ett adjektiv som slutar på t", "en högtid", "något man äter", "ett adjektiv"]
        }
        
        if(choice == "sorry" ){
            typewords = ["ett namn du skulle ge till en hund", "ditt namn", "en kroppsdel", "adjektiv plural",
                        "kroppsdel plural", "adjektiv", "ett djur", "substantiv plural", "ett påhittat djur",
                        "en plats", "ett adjektiv", "en typ av relation", "substantiv", "en plats", "en låt",
                        "något man jobbar som, plural", "en färg", "ett klädesplagg"]
        }
        if(choice == "marry" ){
            typewords = ["En påhittad figur", "En tidsperiod", "En plats", "Ett sätt att äta, dåtid", "En händelse",
                         "Ett adjektiv man använder för att beskriva ett plagg, bestämd form",
                         "Ett smeknamn du skulle ge en söt hund", "Ett fånigt ord", "Ett nummer", "Kroppsdel plural",
                         "Ett verb", "Något som finns i naturen", "Ett annat ord för barn", "En känd person",
                         "Ett adjektiv, superlativ bestämd form - ex. största, gladaste", "Något man äter, bestämd form", "Något annat man äter till det"]
        }
        if(choice == "home" ){
            typewords = ["ett namn", "ett land som inte finns", "en tidsperiod", "en plats", "ett tal",
                         "ett adjektiv", "något som växer i naturen, plural (exempelvis svampar, blommor)",
                         "ett material","ett nummer bestämd form, (exempelvis första, andra, tredje)",
                         "ett adjektiv som slutar på a","ett djur som inte finns", "något man kan äta",
                         "en sak plural", "ett adjektiv", "en affär", "verb som slutar på A",
                         "ett adjektiv som slutar på A"]
            
         
            }
        
        if(choice == "anthem"){
            typewords = ["adjektiv plural", "ett annat adjektiv plural", "ett adjektiv som rimmar på det förra", "ett verb som slutar på -ar, eller -er", "ett adjektiv superlativ", "något som finns i naturen, plural", "ett verb som slutar på -ar eller -er", "något som fanns förr, plural", "en synonym till gamla", "platsen där du bor", "en plats som rimmar på det", "ett frågeord (var, hur, när, varför)", "ett annat frågeord", "ett verb som slutar på -a", "ett verb som är motsatsen av det förra ordet, slutar också på -a"]
         
            
        }
        
        if(choice == "work" ){
            typewords = ["en hälsning", "ditt namn", "något man jobbar som", "en hemsida", "känslan du får innan backen i en berg-o-dalbana", "en kroppsdel, bestämd form", "ett klädesplagg, bestämd form", "ett ovanligt yrke", "något som regeringen borde satsa mer pengar på", "ett roligt ord för vilket kön du har", "din ålder", "ett ordspråk", "något annat man jobbar som", "en tid på dygnet", "ett sätt man kommunicerade på förr i tiden", "ett adjektiv du skulle använda för att beskriva julen"]
        }
        
        if(choice == "test" ){
            typewords = ["en siffra", "ett namn", "en färg"]
            
            typewords.append("något som rimmar på" + rhyme1)
        
        }
        
        progressrate = Progress(totalUnitCount: Int64(typewords.count))
        
        givemeword()
       
        
    }
    
    func givemeword(){
        
    
       
        //Jag behöver ett typewords med plats (index) i listan
        Neededword.text = typewords[index]
        
        
    }
    
    
    @IBAction func showexplain(_ sender: Any) {
        
        if(explainview.isHidden == true){
            explainview.isHidden = false}
        else{ explainview.isHidden = true
        }
            
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
        progressbar()
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
    
    func progressbar()
    {
        self.progressrate.completedUnitCount += 1
        let progressFloat = Float(self.progressrate.fractionCompleted)
        self.progressview.setProgress(progressFloat, animated: true)
        
        
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
