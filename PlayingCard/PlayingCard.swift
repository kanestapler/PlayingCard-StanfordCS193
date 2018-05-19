//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Kane Stapler on 5/19/18.
//  Copyright © 2018 Kane Stapler. All rights reserved.
//

import Foundation

struct PlayingCard: CustomDebugStringConvertible {
    var debugDescription: String {
        return "\(rank) of \(suit)"
    }
    
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomDebugStringConvertible {
        var debugDescription: String { return self.rawValue }
        
        case spades = "♠"
        case hearts = "♥"
        case diamonds = "♦"
        case clubs = "♣"
        
        static var all  = [Suit.clubs, .diamonds, .spades, .hearts]
    }
    
    enum Rank: CustomDebugStringConvertible {
        var debugDescription: String { return String(self.order) }
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
                case .ace: return 1
                case .numeric(let pips): return pips
                case .face(let kind) where kind == "Jack": return 11
                case .face(let kind) where kind == "Queen": return 12
                case .face(let kind) where kind == "King": return 13
                default: return 0
                
            }
        }
        
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            for index in 2...10 {
                allRanks.append(Rank.numeric(index))
            }
            allRanks += [.face("J"),.face("Q"),.face("K")]
            return allRanks
        }
    }
}
