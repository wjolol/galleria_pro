//
//  Album1.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class Album1VC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, IndicatorInfoProvider {
    
    //MARK: Properties
   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewCell: UICollectionViewCell!
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //questo valore serve per far capire alla Collection View quante celle devono essere visualizzate
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath as IndexPath) as! CollectionViewCell
        
        //impostiamo l'immagine e il testo della label con quelli precedentemente dichiarati nelle due variabili
       cell.labelCell.text = "Label"
       
        
        return cell
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Album 1")
    }

}




