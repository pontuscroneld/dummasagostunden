//
//  TheCWVC.swift
//  dummasagostunden
//
//  Created by Pontus Croneld on 2020-10-01.
//

import UIKit

class TheCWVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    
    var stories = ["Semester", "Frieri", "Förlåt", "Greven", "Utflykten", "På sjukhuset", "Kära Dagbok", "Världens godaste kaka", "Frieri", "Förlåt", "Greven", "Utflykten", "På sjukhuset", "Kära Dagbok", "Världens godaste kaka", "Frieri", "Förlåt", "Greven", "Utflykten", "På sjukhuset", "Kära Dagbok", "Världens godaste kaka"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "thecell", for: indexPath) as! TheCollectionViewCell
        
        cell.thelabel.text = stories[indexPath.item]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 20, height: collectionView.frame.width/5)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "gotostory", sender: nil)
        
    }
    

  
    

   

}
