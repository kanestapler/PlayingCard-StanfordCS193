//
//  ViewController.swift
//  PlayingCard
//
//  Created by Kane Stapler on 5/19/18.
//  Copyright © 2018 Kane Stapler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }


}

