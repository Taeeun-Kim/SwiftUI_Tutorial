//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

//func createCardContent(pairIndex: Int) -> String {
//    return "🤗"
//} 이걸 바로 밑에 cardContentFactory: 인라인에서 만들꺼임, 즉 클로저!

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> { // 스태틱으로 선엄함으로 인해, 함수를 벗어나도 사용 가능
        let emojis = ["😬","🎃","👾"] // index[0], index[1]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    /* 즉 이건, init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent)
       여기에서 numberOf..는 그대로, 뒷부분 cardContentFac..은 클로저로 대체
       glass door, they can only see
       model은 MemoryGame<제너릭>의 불러오기 위함 */
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
