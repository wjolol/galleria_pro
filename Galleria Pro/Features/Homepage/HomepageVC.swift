//
//  HomepageVC.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class HomepageVC: ButtonBarPagerTabStripViewController{
    
    //MARK: Properties
    @IBOutlet weak var buttonImpostazioni: UIButton!
    
    let purpleInspireColor = UIColor(red:0.13, green:0.03, blue:0.25, alpha:1.0)
    
    //MARK: Functions
    
    override func viewDidLoad() {
        
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = purpleInspireColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.purpleInspireColor
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let album_1 = UIStoryboard(name: "Homepage", bundle: nil).instantiateViewController(withIdentifier: "Album1VC")
        let album_2 = UIStoryboard(name: "Homepage", bundle: nil).instantiateViewController(withIdentifier: "Album2VC")
        let album_3 = UIStoryboard(name: "Homepage", bundle: nil).instantiateViewController(withIdentifier: "Album3VC")
        return [album_1, album_2, album_3]
    }

    //MARK: Actions
    
    @IBAction func clickButtonImpostazioni(_ sender: UIButton) {
        
        let click = HomepageVM()
        click.openImpostazioni(vc: self)
        
    }
    
}
