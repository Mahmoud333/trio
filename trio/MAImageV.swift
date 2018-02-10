//
//  MAImageV.swift
//  Khassmy
//
//  Created by mac on 12/26/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class MAImageV: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            self.clipsToBounds = true
        }
    }
    
    @IBInspectable var perfectCircle: Bool = false {
        didSet {
            if perfectCircle {
                layer.cornerRadius = self.bounds.height / 2
                self.clipsToBounds = true
            }
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

