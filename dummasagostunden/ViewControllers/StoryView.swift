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
    var index = 0
    
    var choice = ""
    var progressrate = Progress(totalUnitCount: 0)
    
    @IBOutlet weak var progressview: UIProgressView!
  
    var myMutableStringTitle = NSMutableAttributedString()
    let Name  = "Enter Title" // PlaceHolderText

   
    
    
    
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
            typewords = ["en tidsperiod", "en plats du aldrig har varit", "en påhittad karaktär", "ett efternamn", "ett ovanligt djur", "ett adjektiv",
                         "en miljö som finns i naturen, bestämd form, tex ängen, havet eller vulkanen", "något man säger när man ska gå och bada", "ett klädesplagg plural",
                         "en kroppsdel, tex hand", "en annan kroppsdel, bestämd form, tex handen", "en tidsperiod", "substantiv, plural",
                         "ett adjektiv som slutar på t, tex blött", "en högtid", "något man äter", "känslan du får när du äntligen är klar med en StoryTajm"]
        }
        
        if(choice == "sorry" ){
            typewords = ["ett namn du skulle ge till en hund", "ditt namn", "en kroppsdel", "ett adjektiv plural, tex dumma eller snälla", "en kroppsdel plural, tex händer", "ett adjektiv som beskriver en hjälte", "en eller ett + ditt favoritdjur", "något som rör på sig, ett substantiv plural", "ett påhittat djur",
                        "en plats du aldrig varit", "ett adjektiv", "en typ av relation, tex kompis eller mamma", "något som man slänger på marken, plural", "en adress", "en låt",
                        "något man jobbar som, plural", "en färg", "ett klädesplagg"]
        }
        if(choice == "marry" ){
            typewords = ["En påhittad figur", "En tidsperiod", "En plats", "Ett sätt att äta, dåtid", "En händelse som du läst i nyheterna, eller varit med om själv",
                         "Ett adjektiv man använder för att beskriva ett klädesplagg, bestämd form",
                         "Ett smeknamn du skulle ge en söt hund", "Ett fånigt låtsasord", "Ett nummer", "En kroppsdel plural, tex händer",
                         "Ett verb som betyder rörelse, tex vibrera eller hoppa", "Något som finns i naturen", "Ett annat ord för barn", "En känd person",
                         "Ett adjektiv, superlativ, bestämd form - ex. största, gladaste", "Något man äter, bestämd form", "Något annat man äter till det"]
        }
        if(choice == "home" ){
            typewords = ["ett långt och fånigt namn", "ett land som inte finns", "en tidsperiod", "Platsen där du bor", "ett nummer större än 1",
                         "ett adjektiv som beskriver något stort och vackert", "något som växer i naturen, plural, tex svampar, blommor",
                         "ett material som man kan tillverka saker i", "ett nummer bestämd form, tex första, andra, tredje",
                         "ett adjektiv i bestämd form", "ett djur eller en varelse som inte finns", "något man kan äta",
                         "något du skulle vilja äta varje dag plural", "ett adjektiv", "ett ord som betyder kompis", "namnet på en affär", "verb som slutar på A, tex springa eller hoppa",
                         "ett adjektiv, bestämd form"]
            
         
            }
        
        if(choice == "anthem"){
            typewords = ["adjektiv plural", "ett annat adjektiv plural", "ett adjektiv som rimmar på det förra", "ett verb som slutar på -ar, eller -er", "ett adjektiv, bestämd form och superlativ, tex grönaste eller bästa", "något som finns i naturen, plural", "ett verb som slutar på -ar eller -er", "något som fanns förr, plural", "ett adjektiv som betyder gamla, plural", "platsen där du bor", "en plats som rimmar på det", "ett frågeord, tex var, hur, när eller varför", "ett annat frågeord", "ett verb som slutar på -a, tex springa eller hoppa", "ett verb som är motsatsen av det förra ordet, slutar också på -a"]
         
            
        }
        
        if(choice == "work" ){
            typewords = ["en hälsning", "ditt namn", "något man jobbar som", "en hemsida som finns på internet", "tanken du får innan backen i en berg-o-dalbana", "en kroppsdel, bestämd form, tex handen", "ett klädesplagg, bestämd form", "ett ovanligt yrke", "något som regeringen borde satsa mer pengar på", "ett roligt ord för vilket kön du har", "din ålder", "ett ordspråk, tex skrattar bäst som skrattar sist", "något annat man jobbar som", "en tid på dygnet, tex soluppgång eller klockan fem", "ett sätt man kommunicerade på förr i tiden", "ett adjektiv du skulle använda för att beskriva julen"]
        }
        
        if(choice == "teacher" ){
            typewords = ["en grönsak", "djur i bestämd form och ägandeform, tex hundens eller kattens", "en tidsperiod", "ett adjektiv som beskriver den bästa filmen du sett", "något du äter till frukost", "ett fordon i bestämd form, tex bilen", "ett adjektiv som slutar på -t", "en preposition tex över, under, bredvid", "ett adjektiv som slutar på -t", "en sak som finns i skogen", "ett djur du inte möter i skogen", "ett avstånd, tex fem meter eller tio mil", "en tidsperiod", "något man sjunker ner i", "något som är långt och hårt", "ett verb som beskriver ett sätt att förstöra något"]
            
        
        }
        
        if(choice == "test" ){
            typewords = ["en siffra", "ett namn", "en färg"]
            
        
        }
        
        progressrate = Progress(totalUnitCount: Int64(typewords.count))
        
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
   

    @IBAction func mutebutton(_ sender: Any) {
        MusicPlayer.shared.pausemusic()
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        EffectPlayer.shared.buttonsound()
        presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func explainbutton(_ sender: Any) {
        EffectPlayer.shared.buttonsound()
    }
    
    
    @IBAction func changeprevious(_ sender: Any) {
        
        if(index == 0){
            return
        } else {
            index -= 1
            Textfield.text = playerwords[index]
            playerwords.remove(at: index)
            negativeprogress()
            givemeword()
        }
    }
        
    
    
    func negativeprogress(){
        self.progressrate.completedUnitCount -= 1
        let progressFloat = Float(self.progressrate.fractionCompleted)
        self.progressview.setProgress(progressFloat, animated: true)
        
    }
    
}
