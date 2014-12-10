//
//  ViewController.swift
//  Cards
//
//  Created by Valerio Ferrucci on 01/12/14.
//  Copyright (c) 2014 Valerio Ferrucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var deck = Deck()
    
    @IBAction func toggleCard(sender: UIButton) {
    
        let title = sender.titleForState(.Normal)
        if title == nil {
            
            // scopriamo la carta
            let aCard : FrenchCard? = deck.drawRandomCard() as FrenchCard?
            if let _aCard = aCard {
                
                sender.setTitle(_aCard.name, forState: .Normal)
                sender.setBackgroundImage(UIImage(named: "bianco"), forState: .Normal)
                var textColor : UIColor
                switch _aCard.color() {
                case "red":
                    textColor = UIColor.redColor()
                default:
                    textColor = UIColor.blackColor()
                }
                sender.setTitleColor(textColor, forState: .Normal)
            }
        } else {
            
            sender.setBackgroundImage(UIImage(named: "sfondo"), forState: .Normal)
            sender.setTitle(nil, forState: .Normal)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // credo un deck completo di carte francesi
        for s in 1...4 {
            for n in 1...13 {
                let rank = FrenchCard.Rank(n)
                let suit : FrenchCard.Suit? = FrenchCard.Suit(rawValue: s)
                let card = FrenchCard(rank: rank, suit: suit ?? .Cuori)
                deck.addCard(card)
            }
        }

    }

}

