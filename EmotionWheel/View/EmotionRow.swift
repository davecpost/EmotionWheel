//
//  EmotionRow.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import Foundation

import SwiftUI

struct EmotionRow: View {
    var emotion: Emotion
    var body: some View {
        HStack {
            Text("\(emotion.name)")
                .fontWeight(.bold)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "plus")
            }
            Button {
            } label: {
                Image(systemName: "chevron.forward.circle")
            }
            
        }
        .font(.system(size: 40))
    }
}

struct EmotionRow_Previews: PreviewProvider {
    static var previews: some View {
        EmotionRow(emotion: Emotion(name: "Happy", color: Color.yellow))
    }
}
