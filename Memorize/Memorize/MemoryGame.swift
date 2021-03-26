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
    
    // initialize
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) { // no return, just initialize
        cards = Array<Card>() // empty array cards
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex) // content: cardContent
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
            // pairIndex는 0 1 2 3 .. 이렇게 늘어나기에, 한개의 pairIndex에 두개의 카드를 추가해야하니,
            // 예를 들어,
            // 인덱스 0이면, 0*2=0, 0*2+1=1
            // 인덱스 1이면, 1*2=2, 1*2+1=3  즉 순서대로 0, 1, 2, 3 .. 순서에 맞게 id 대입이 됨
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var inMatched: Bool = false
        var content: CardContent // 숫자일 수도 있고, 이모지일 수도 있고, 스트링일 수도 있고, 고로 제너릭 선언 필요
        var id: Int
    }
}
