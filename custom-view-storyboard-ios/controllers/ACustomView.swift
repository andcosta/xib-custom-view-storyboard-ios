//
//  ACustomView.swift
//  custom-view-storyboard-ios
//
//  Created by Anderson de Carvalho on 14/09/18.
//  Copyright © 2018 Anderson de Carvalho. All rights reserved.
//

import UIKit

@IBDesignable class ACustomView: UIView {
    
    @IBOutlet weak var lbCustom: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        LoadViewFromNibHelper().loadViewFromNib(nibName: "ACustomView", refSelf: self)
        
        lbCustom.text = "View custom A"
    }
}
