//
//  Album1.swift
//  Galleria Pro
//
//  Created by Giorgio Sertori on 21/09/18.
//  Copyright © 2018 Giorgio Sertori. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class Album1VC: UIViewController, IndicatorInfoProvider {
    
    //MARK: Properties
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = contentView.frame.size
        //scrollView.delegate = self
        
        for i in 0..<15{
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 22))
            label.center = CGPoint(x: 128, y: 1 + (( i+1 ) * 100 ))
            label.textAlignment = .center
            label.text = "Label" + String(i)
            
           
            contentView.addSubview(label)
            
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Album 1")
    }
    
}
