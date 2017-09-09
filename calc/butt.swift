//
//  butt.swift
//  calc
//
//  Created by chetan rajagiri on 09/09/17.
//  Copyright © 2017 chetan rajagiri. All rights reserved.
//

import UIKit

class butt: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        let radius: CGFloat = self.bounds.size.width / 2.0
        
        self.layer.cornerRadius = radius
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
