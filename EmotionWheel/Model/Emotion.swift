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
    var color: Color? = nil
    var subEmotions: [Emotion] = []
}

var emotionWheel = [
    Emotion(name: "Afraid", color: Color.purple, subEmotions: [
                Emotion(name: "Apprehensive"),
        Emotion(name: "Stressed"),
        Emotion(name: "Worried"),
        Emotion(name: "Inadequate"),
        Emotion(name: "Confused"),
        Emotion(name: "Threatened"),
        Emotion(name: "Helpless"),
    ]),
    Emotion(name: "Embarrased", color: Color.pink, subEmotions: [
                Emotion(name: "Disrespected"),
        Emotion(name: "Worthless"),
        Emotion(name: "Guilty"),
        Emotion(name: "Sheepish"),
        Emotion(name: "Ashamed"),
        Emotion(name: "Inferior"),
    ]),
    Emotion(name: "Angry", color: Color.orange, subEmotions: [
                Emotion(name: "Offended"),
        Emotion(name: "Indignant"),
        Emotion(name: "Dismayed"),
        Emotion(name: "Bitter"),
        Emotion(name: "Frustrated"),
        Emotion(name: "Agressive"),
        Emotion(name: "Harassed"),
        Emotion(name: "Bored"),
        Emotion(name: "Rushed"),
    ]),
    Emotion(name: "Alone", color: Color.yellow, subEmotions: [
                Emotion(name: "Distant"),
        Emotion(name: "Lonely"),
        Emotion(name: "Excluded"),
        Emotion(name: "Fragile"),
        Emotion(name: "Abandoned"),
        Emotion(name: "Desolate"),
    ]),
    Emotion(name: "Dislike", color: Color.green, subEmotions: [
                Emotion(name: "Dismissive"),
        Emotion(name: "Disgusted"),
        Emotion(name: "Suspicious"),
        Emotion(name: "Appalled"),
        Emotion(name: "Repelled"),
        Emotion(name: "Skeptical"),
    ]),
    Emotion(name: "Sad", color: Color.blue, subEmotions: [
                Emotion(name: "Depressed"),
        Emotion(name: "Hurt"),
        Emotion(name: "Bereft"),
        Emotion(name: "Melancholy"),
        Emotion(name: "Subdued"),
        Emotion(name: "Aggrieved"),
        Emotion(name: "Discouraged"),
    ])
]
