//
//  ReadView.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-09-24.
//

import UIKit
import AVFoundation

class ReadView: UIViewController {
    
    
    @IBOutlet weak var thestory: UILabel!
    var storywords = [String]()
    var story = ""
    let spk = AVSpeechSynthesizer()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        MusicPlayer.shared.audioPlayer?.volume = 0.1
        
        if(story == "holiday"){
            thestory.text = "För \(storywords[0]) sen var jag på semester i \(storywords[1]) med min kompis \(storywords[2]) och mitt husdjur \(storywords[3]), en tam \(storywords[4]). Min kompis och jag bodde på ett hotell med en \(storywords[5]) utsikt över \(storywords[6]). - \(storywords[7]) sa \(storywords[2]) och slängde mina \(storywords[8]) mot mig. Jag försökte fånga dem med en \(storywords[9]) men missade och de träffade mig rakt i \(storywords[10]). Vi skrattade i \(storywords[11]) och sen gick vi ner till stranden. Vågorna var höga som \(storywords[12]) och vattnet var \(storywords[13]). Men \(storywords[2]) sprang i vattnet och badade som om det var \(storywords[14]). Jag satt kvar på stranden och matade \(storywords[3]) med \(storywords[15]). Vi såg ut över solen som gick ner över havet och för första gången på flera veckor kände jag mig riktigt \(storywords[16])."
        }
        if(story == "sorry"){
            thestory.text = "Hej \(storywords[0]), det är jag, \(storywords[1]). Jag vet att jag sårade dig igår när slog dig i \(storywords[2]) och sa att du hade \(storywords[3]) \(storywords[4]). Jag menade det inte och sanningen är att jag tycker att du är \(storywords[5]) som \(storywords[6]). Och det vill jag att du ska veta. Egentligen handlar allting om mig själv, att du kan så mycket mer om \(storywords[7]) än jag och om mina egna förväntningar på mig själv. Jag har alltid drömt om att rida \(storywords[8]) i \(storywords[9]) och att du redan har gjort det kan få mig att känna mig \(storywords[10]). Jag vill vara din \(storywords[11]) igen. Kan vi ses imorgon? Vad sägs om att ses vid \(storywords[12]) på \(storywords[13]) där vi möttes första gången? Där vi sjöng på \(storywords[14]) och dansade som \(storywords[15]). Jag kommer stå där i en \(storywords[16]) \(storywords[17]) och vänta på dig, precis som jag gjorde då. Förlåt, Din käre \(storywords[11])."
        }
        
        if(story == "marry"){
            thestory.text = "Älskade \(storywords[0]), jag visste redan efter \(storywords[1]) när jag såg dig att det skulle vara du och jag för evigt. Du stod där på \(storywords[2]) och \(storywords[3]) i dig din frukost och läste en artikel om \(storywords[4]) i en skvallertidning. Du såg på mig i min \(storywords[5]) tröja och jag visste att det var kärlek vid första ögonblicket. Du blev min \(storywords[6]), och jag blev din \(storywords[7]). Nu står vi här \(storywords[8]) år senare och jag är lika kär som då. Du får fortfarande mina \(storywords[9]) att \(storywords[10]) som \(storywords[11]) i vinden, precis som det var igår. Jag vill se världen med dig, jag vill bli gammal med dig och jag vill få egna små \(storywords[12]) som ser ut som en blandning av mig, dig, och kanske lite \(storywords[13]) också. Vill du, \(storywords[0]), bli min \(storywords[6]) för evigt och göra mig till världens \(storywords[14]) \(storywords[7])? Vill du bli \(storywords[15]) till min \(storywords[16])? Vill du gifta dig med mig?"
        }
        
        if(story == "home"){
            thestory.text = "Greven \(storywords[0]) bor i landet \(storywords[1]). Har du aldrig hört talas om det? Det ligger bara \(storywords[2])s färd ifrån \(storywords[3]), som jag förmodar att du känner till. Greven vann alldeles nyligen \(storywords[4]) kronor på lotto och för dom pengarna ska han bygga ett nytt slott. Han har planerat allt in i minsta detalj. Föreställ er en \(storywords[5]) port som leder in i byggnaden, omringat av tusen \(storywords[6]). Hallen har ett golv av marmor och väggarna är gjorda av \(storywords[7]). På den \(storywords[8]) våningen ligger hans sovrum med utsikt över den \(storywords[9]) skogen. Där sägs finnas både vilda \(storywords[10]) och en \(storywords[11]) som ger en kraften att kunna trolla fram \(storywords[12]). Det förstår du själv vilken makt som det innebär. Greven är en lycklig man, men han känner sig ensam i sitt stora hem och längtar efter en \(storywords[13]) \(storywords[14]). Har han tur kanske han träffar han dig imorgon på \(storywords[15]) när han handlar något att \(storywords[16]) med i sitt nya hem. Så kan du få följa med och se grevens nya, \(storywords[17]) hem."
        }
        
        if(story == "anthem"){
            thestory.text = "Du gamla du fria du \(storywords[0]) nord. Du tysta du glädjerika \(storywords[1]). Jag \(storywords[3]) dig \(storywords[4]) land uppå jord. Din sol, din himmel, dina \(storywords[5]) \(storywords[2]). Din sol, din himmel, dina \(storywords[5]) \(storywords[2])! Du \(storywords[6]) på \(storywords[7]) från \(storywords[8]) dar. Då ärat ditt namn flög över \(storywords[10]). Jag vet \(storywords[11]) du är, och du blir \(storywords[12]) du var. Ja jag vill \(storywords[13]), jag vill \(storywords[14]) i \(storywords[9]). Ja jag vill \(storywords[13]), jag vill \(storywords[14]) i \(storywords[9])!"

        }
        
        if(story == "work"){
            thestory.text = "\(storywords[0])! Jag heter \(storywords[1]) och jag skriver angående tjänsten som \(storywords[2]) hos er. Jag såg er annons på \(storywords[3]) och tänkte direkt -\(storywords[4]). Jag är på jakt efter ett jobb och jag tror att jag hade passat in hos er som \(storywords[5]) i \(storywords[6]). Jag är utbildad \(storywords[7]), med många års erfarenhet inom \(storywords[8]). För att beskriva vem jag är: Jag är en glad och energisk \(storywords[9]) på \(storywords[10]) jordsnurr. Jag är ansvarsfull och positiv och lever efter orden: \(storywords[11]) som min \(storywords[12]) alltid sa. Jag ser fram emot ett personligt möte där jag även kan få lära känna er bättre. Jag är tillgänglig alla vardagar runt \(storywords[13]) och ni kan nå mig på telefon och mail men allra helst genom \(storywords[14]). Det funkar bäst för mig. Jag önskar er en \(storywords[15]) dag! Med vänliga hälsningar, \(storywords[1]), er nästa \(storywords[2])."

        }
        
        if(story == "teacher"){
            thestory.text = "Kära Fröken \(storywords[0])sson. Som du vet är det sista inlämning på uppsatsen om \(storywords[1]) historia idag. Jag undrar om jag skulle kunna få \(storywords[2]) till på mig för att lämna in uppgiften. Det är nämligen så att jag skrev färdigt uppsatsen igår och la den i min skolväska. Den var \(storywords[3]), det ska du veta. Imorse vaknade jag sent och hann precis göra en \(storywords[4]) som jag la ner i min väska innan jag sprang till \(storywords[5]). Tyvärr så hade jag gjort ett \(storywords[6]) misstag och glömt knyta mina skosnören. Jag snubblade på ett skosnöre på väg till \(storywords[5]) och föll ner i diket \(storywords[7]) vägen. Eftersom det regnade så \(storywords[8]) igår var det en kraftig ström som drog med mig ut i skogen där jag till slut fick tag i en \(storywords[9]) och drog mig upp. Jag gick runt vilse en stund innan jag satte mig på en stock för att äta min frukost. Då kom en \(storywords[10]) som känt doften av min \(storywords[4]) och jagade mig upp i ett träd. Ena remmen till ryggsäcken gick sönder och uppsatsen flög iväg och landade på marken \(storywords[11]) bort. Efter \(storywords[12]) var det säkert att klättra ner men pappret hade landat i \(storywords[13]) och jag började sjunka! Med hjälp av en \(storywords[14]) lyckades jag både komma upp igen och nå läxan men nu hade jag gjort ett stort hål mitt i pappret. Uppsatsen går inte längre att läsa så jag var tvungen att \(storywords[15]) den. Så jag undrar, kan jag få \(storywords[2]) till?"
        }
        
        if(story == "test"){
            thestory.text = "Jag har \(storywords[0]) hundar. Min favorit heter \(storywords[1]). Men jag tycker tyvärr inte om att den är \(storywords[2]). Den är nog inte min favorit ändå."
        }
            
            read()
        }
        
        // Do any additional setup after loading the view.
    
    
    func read(){
    let voice = AVSpeechSynthesisVoice(language: "sv-SE")
          let toSay = AVSpeechUtterance(string: thestory.text!)
          toSay.voice = voice
          spk.speak(toSay)
    }

    
    @IBAction func startover(_ sender: Any) {
        
       spk.stopSpeaking(at: AVSpeechBoundary.immediate)
        MusicPlayer.shared.audioPlayer?.volume = 0.5
        
        presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: false, completion: nil)
        
    }
    
    @IBAction func mutebutton(_ sender: Any) {
        MusicPlayer.shared.pausemusic()
        }
    
    
    @IBAction func readagain(_ sender: Any) {
        read()
    }
}
