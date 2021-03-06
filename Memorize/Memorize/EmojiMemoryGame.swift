//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

//func createCardContent(pairIndex: Int) -> String {
//    return "๐ค"
//} ์ด๊ฑธ ๋ฐ๋ก ๋ฐ์ cardContentFactory: ์ธ๋ผ์ธ์์ ๋ง๋ค๊บผ์, ์ฆ ํด๋ก์ !

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> { // ์คํํฑ์ผ๋ก ์ ์ํจ์ผ๋ก ์ธํด, ํจ์๋ฅผ ๋ฒ์ด๋๋ ์ฌ์ฉ ๊ฐ๋ฅ
        let emojis = ["๐ฌ","๐","๐พ"] // index[0], index[1]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    /* ์ฆ ์ด๊ฑด, init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent)
       ์ฌ๊ธฐ์์ numberOf..๋ ๊ทธ๋๋ก, ๋ท๋ถ๋ถ cardContentFac..์ ํด๋ก์ ๋ก ๋์ฒด
       glass door, they can only see
       model์ MemoryGame<์ ๋๋ฆญ>์ ๋ถ๋ฌ์ค๊ธฐ ์ํจ */
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
