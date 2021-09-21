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
    
    static var emotions: [Emotion] = [
        Emotion(name: "Afraid", color: Color.purple, subEmotions: [
            Emotion(name: "Apprehensive", color: Color.purple),
            Emotion(name: "Stressed", color: Color.purple),
            Emotion(name: "Worried", color: Color.purple),
            Emotion(name: "Inadequate", color: Color.purple),
            Emotion(name: "Confused", color: Color.purple),
            Emotion(name: "Threatened", color: Color.purple),
            Emotion(name: "Helpless", color: Color.purple),
        ]),
        Emotion(name: "Embarrased", color: Color.red, subEmotions: [
            Emotion(name: "Disrespected", color: Color.red),
            Emotion(name: "Worthless", color: Color.red),
            Emotion(name: "Guilty", color: Color.red),
            Emotion(name: "Sheepish", color: Color.red),
            Emotion(name: "Ashamed", color: Color.red),
            Emotion(name: "Inferior", color: Color.red),
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
        ]),
        Emotion(name: "Love", color: Color.pink, subEmotions: [
            Emotion(name: "Peaceful", color: Color.pink),
            Emotion(name: "Tenderness", color: Color.pink),
            Emotion(name: "Desire", color: Color.pink),
            Emotion(name: "Longing", color: Color.pink),
            Emotion(name: "Affectionate", color: Color.pink),
        ]),
        Emotion(name: "Joy", color: Color.yellow, subEmotions: [
            Emotion(name: "Enthralled", color: Color.yellow),
            Emotion(name: "Elation", color: Color.yellow),
            Emotion(name: "Enthusiastic", color: Color.yellow),
            Emotion(name: "Optimistic", color: Color.yellow),
            Emotion(name: "Proud", color: Color.yellow),
            Emotion(name: "Cheerful", color: Color.yellow),
            Emotion(name: "Happy", color: Color.yellow),
            Emotion(name: "Content", color: Color.yellow),
        ])
    ]
    
    static func getColor(for name: String?) -> Color {
        guard let name = name else {
            return Color.white
        }
        for emotion in Emotion.emotions {
            if emotion.name == name {
                return emotion.color
            } else if let found = searchForSubEmotion(named: name, in: emotion) {
                return found.color
            }
        }
        return Color.white
    }
    
    private static func searchForSubEmotion(named name: String, in emotion: Emotion) -> Emotion? {
        for subEmotion in emotion.subEmotions {
            if subEmotion.name == name {
                return subEmotion
            }
            if let e = searchForSubEmotion(named: name, in: subEmotion) {
                return e
            }
        }
        return nil
    }
}
