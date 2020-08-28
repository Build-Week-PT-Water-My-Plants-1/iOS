//
//  ColorsHelper.swift
//  WaterMyPlantsBW
//
//  Created by Bronson Mullens on 8/26/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class ColorsHelper {
    
    static let lightGreen: UIColor = UIColor(displayP3Red: 0.2353, green: 0.5412, blue: 0.0863, alpha: 1)
    static let darkGreen: UIColor = UIColor(displayP3Red: 0.0784, green: 0.2667, blue: 0.0784, alpha: 1)
    
}

// Extension on UIColor in order to give easier color codes
extension UIColor {
    
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
    
}
