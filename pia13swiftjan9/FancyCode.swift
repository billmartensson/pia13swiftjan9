//
//  FancyCode.swift
//  pia13swiftjan9
//
//  Created by BillU on 2025-01-09.
//

import Foundation

class FancyCode {
    func funtext() -> String {
        return "Fun fun!"
    }
    
    
    func douserdef() {
        
        let defaults = UserDefaults(suiteName: "group.pia13")
        defaults?.set("banan", forKey: "fruit")
        
    }
}
