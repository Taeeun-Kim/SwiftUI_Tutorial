//
//  MemoryGame.swift
//  Memorize
//
//  Created by Taeeun Kim on 26.03.21.
//

import Foundation

struct MemoryGame<CardContent> { // 제너릭
    var cards: Array<Card> // Array ist generic, don't care about type
    
    func choose(card: Card){ // 자료형이 Array<Card>
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) { // no return, just initialize
        cards = Array<Card>() // empty array cards
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex) // content: cardContent
            cards.append(Card(isFaceUp: false, inMatched: false, content: <#T##CardContent#>))
            cards.append(Card(isFaceUp: false, inMatched: false, content: <#T##CardContent#>))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var inMatched: Bool
        var content: CardContent // 숫자일 수도 있고, 이모지일 수도 있고, 스트링일 수도 있고, 고로 제너릭 선언 필요
    }
}
