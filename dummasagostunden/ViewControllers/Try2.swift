//
//  Try2.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-10-08.
//

import UIKit

class Try2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    var stories = ["Min härliga semester", "Förlåt mig, ett brev", "Vill du gifta dig med mig?", "Grevens nya hem"]
    
    var thechoice = ""
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 20, height: collectionView.frame.width/5)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("CELL")
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celltry2", for: indexPath) as! Try2Cell
        
        cell.thelabel.text = stories[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("DID SELECT")
        
        stories[indexPath.item]
        
        let pickedstory = stories[indexPath.item]
        //performSegue(withIdentifier: "gotostory", sender: pickedstory)
        
        
    }
}
