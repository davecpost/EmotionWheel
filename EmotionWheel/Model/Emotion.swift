//
//  Emotion.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import Foundation
import SwiftUI

struct Emotion: Identifiable {
    let id = UUID()
    var name: String
    var color: Color
    var subEmotions: [Emotion] = []
}

var emotionWheel = [
    Emotion(name: "Afraid", color: Color.purple, subEmotions: [
                Emotion(name: "Apprehensive", color: Color.purple),
        Emotion(name: "Stressed", color: Color.purple),
        Emotion(name: "Worried", color: Color.purple),
        Emotion(name: "Inadequate", color: Color.purple),
        Emotion(name: "Confused", color: Color.purple),
        Emotion(name: "Threatened", color: Color.purple),
        Emotion(name: "Helpless", color: Color.purple),
    ]),
    Emotion(name: "Embarrased", color: Color.pink, subEmotions: [
                Emotion(name: "Disrespected", color: Color.pink),
        Emotion(name: "Worthless", color: Color.pink),
        Emotion(name: "Guilty", color: Color.pink),
        Emotion(name: "Sheepish", color: Color.pink),
        Emotion(name: "Ashamed", color: Color.pink),
        Emotion(name: "Inferior", color: Color.pink),
    ]),
    Emotion(name: "Angry", color: Color.orange, subEmotions: [
                Emotion(name: "Offended", color: Color.orange),
        Emotion(name: "Indignant", color: Color.orange),
        Emotion(name: "Dismayed", color: Color.orange),
        Emotion(name: "Bitter", color: Color.orange),
        Emotion(name: "Frustrated", color: Color.orange),
        Emotion(name: "Agressive", color: Color.orange),
        Emotion(name: "Harassed", color: Color.orange),
        Emotion(name: "Bored", color: Color.orange),
        Emotion(name: "Rushed", color: Color.orange),
    ]),
    Emotion(name: "Alone", color: Color.yellow, subEmotions: [
                Emotion(name: "Distant", color: Color.yellow),
        Emotion(name: "Lonely", color: Color.yellow),
        Emotion(name: "Excluded", color: Color.yellow),
        Emotion(name: "Fragile", color: Color.yellow),
        Emotion(name: "Abandoned", color: Color.yellow),
        Emotion(name: "Desolate", color: Color.yellow),
    ]),
    Emotion(name: "Dislike", color: Color.green, subEmotions: [
                Emotion(name: "Dismissive", color: Color.green),
        Emotion(name: "Disgusted", color: Color.green),
        Emotion(name: "Suspicious", color: Color.green),
        Emotion(name: "Appalled", color: Color.green),
        Emotion(name: "Repelled", color: Color.green),
        Emotion(name: "Skeptical", color: Color.green),
    ]),
    Emotion(name: "Sad", color: Color.blue, subEmotions: [
                Emotion(name: "Depressed", color: Color.blue),
        Emotion(name: "Hurt", color: Color.blue),
        Emotion(name: "Bereft", color: Color.blue),
        Emotion(name: "Melancholy", color: Color.blue),
        Emotion(name: "Subdued", color: Color.blue),
        Emotion(name: "Aggrieved", color: Color.blue),
        Emotion(name: "Discouraged", color: Color.blue),
    ])
]
