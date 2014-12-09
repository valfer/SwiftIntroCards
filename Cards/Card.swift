//
//  Card.swift
//  Cards
//
//  Created by Valerio2 on 19/06/14.
//  Copyright (c) 2014 Valerio2. All rights reserved.
//

import Foundation

class Card : Printable {
    
    var description: String {
        
        get {
            return self.descr()
        }
    }
    
    var name : String = ""
    
    func descr() -> String {
        
        return name
    }
}