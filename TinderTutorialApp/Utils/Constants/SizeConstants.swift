//
//  SizeConstants.swift
//  TinderTutorialApp
//
//  Created by Aram on 18.03.24.
//

import SwiftUI

struct SizeConstants {
    static var screenCutoff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    
    static var cardWidth: CGFloat {
       return UIScreen.main.bounds.width - 20
    }
    
    static var cardHeight: CGFloat {
        return UIScreen.main.bounds.height / 1.45
    }
}
