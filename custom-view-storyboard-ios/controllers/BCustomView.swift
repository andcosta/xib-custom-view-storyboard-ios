//
//  BCustomView.swift
//  custom-view-storyboard-ios
//
//  Created by Anderson de Carvalho on 14/09/18.
//  Copyright © 2018 Anderson de Carvalho. All rights reserved.
//

import UIKit

@IBDesignable class BCustomView: UIView {
    
    @IBOutlet weak var lbCustom: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        let view = loadViewFromNib()
        view.frame = bounds
        
        view.autoresizingMask =
            UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(
                UInt8(UIViewAutoresizing.flexibleWidth.rawValue) |
                    UInt8(UIViewAutoresizing.flexibleHeight.rawValue)))
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "BCustomView", bundle: bundle)
        
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Could not load view from nib file.")
        }
        
        return view
    }
}
