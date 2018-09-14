//
//  LoadViewFromNibHelper.swift
//  custom-view-storyboard-ios
//
//  Created by Anderson de Carvalho on 14/09/18.
//  Copyright © 2018 Anderson de Carvalho. All rights reserved.
//

import UIKit

class LoadViewFromNibHelper: UIView {

    func loadViewFromNib(nibName: String, refSelf: UIView) {
     
        let bundle = Bundle(for: type(of: refSelf))
        let nib = UINib(nibName: nibName, bundle: bundle)
        
        guard let view = nib.instantiate(withOwner: refSelf, options: nil).first as? UIView else {
            fatalError("Could not load view from nib file.")
        }
        
        view.frame = refSelf.bounds
        view.autoresizingMask =
            UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(
                UInt8(UIViewAutoresizing.flexibleWidth.rawValue) |
                    UInt8(UIViewAutoresizing.flexibleHeight.rawValue)))
        
        refSelf.addSubview(view)
    }
}
