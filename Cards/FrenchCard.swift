//
//  FrenchCard.swift
//  Cards
//
//  Created by Valerio Ferrucci on 24/09/14.
//  Copyright (c) 2014 Tabasoft. All rights reserved.
//

import Foundation

class FrenchCard : Card {
    
    enum Suit : Int {
        
        case Cuori = 1
        case Quadri
        case Fiori
        case Picche

        func descr() -> String {
            switch self {
                
            case Cuori:
                return "♥️"
            case Quadri:
                return "♦️"
            case Fiori:
                return "♣️"
            case Picche:
                return "♠️"
            }
        }

        func color() -> String {
            switch self {
                
            case Cuori:
                return "red"
            case Quadri:
                return "red"
            case Fiori:
                return "black"
            case Picche:
                return "black"
            }
        }
    }
    
    enum Rank  {
        case N(Int)
        case J
        case Q
        case K
        case A
        
        init(_ n : Int) {
            
            // boundary check
            switch n {
            case 1:
                self = .A
            case 2...10:
                self = .N(n)
            case 11:
                self = .J
            case 12:
                self = .Q
            case 13:
                self = .K
            default:
                assertionFailure("impossible Rank value \(n)")
                break   // error
            }
        }
        
        func descr() -> String {
            switch self {
                
            case N(let x):
                return "\(x)"
            case J:
                return "J"
            case Q:
                return "Q"
            case K:
                return "K"
            case A:
                return "A"
            }
        }
    }
    
    private let _rank : Rank
    private let _suit : Suit
    
    init(var rank : Rank, var suit : Suit) {
        
        self._rank = rank
        self._suit = suit
        super.init()
        self.name = self.rank() + " " + self.suit()
    }
    
    //MARK: PUBLIC
    func suit() -> String {
        return _suit.descr()
    }

    func color() -> String {
        return _suit.color()
    }
    
    func rank() -> String {
        return _rank.descr()
    }
    
    override func descr() -> String {
        
        return super.descr()
        // return rank() + " " + suit()
    }
}
