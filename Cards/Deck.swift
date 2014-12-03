//
//  Deck.swift
//  Cards
//
//  Created by Valerio Ferrucci on 24/09/14.
//  Copyright (c) 2014 Tabasoft. All rights reserved.
//

import Foundation

class Deck {
    
    lazy private var _cards = [Card]()
    
    func addCard(card : Card) {
        _cards.append(card)
    }
    
    // nota bene torna un optional, le carte potrebbero essere finite
    func drawRandomCard() -> Card? {
        
        var card : Card?
        
        let totCards = _cards.count
        if totCards > 0 {
            
            let index = Int(arc4random()) % totCards
            card = _cards[index]
            _cards.removeAtIndex(index)
        }
        
        return card
    }
}

