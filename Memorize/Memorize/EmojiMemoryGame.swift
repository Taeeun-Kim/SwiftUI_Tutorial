//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

func createCardContent(pairIndex: int) -> String {
    
}

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: <#T##(Int) -> String#>)
    // glass door, they can only see
    // model은 MemoryGame<제너릭>의 불러오기 위함
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
