//
//  CountBits.swift
//  DSAPrep
//
//  Created by Ahmad medo on 08/01/2023.
//

import Foundation

class CountBits{
    
    static func count_bits(x: Int)-> Int{
        var innerX = x
        var num_bits = 0
        
        // 25 is 11001 in binary
        // while 11001 != 0:
        /*
             (11001 & 1) (take most right bit which is 1 equals 1)
             if true you add 1 to counter
         */
        // right shifting by 1 (you get a new number representation)
       /*
            after first right shifting by one you get (another representation)
            1100 -> 12
        */
        while innerX != 0{
            print(innerX & 1, "compare")
            // innerX & 1 result different(0 or 1) based on condition
            num_bits += innerX & 1
            innerX >>= 1
        }
        return num_bits
        
    }
    
}
