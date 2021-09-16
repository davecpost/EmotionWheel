//
//  RecordEmotionView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import SwiftUI

struct RecordEmotionView: View {
    @Binding var showSheet: Bool
    @State private var description: String = ""
    @State private var intensity: Double = 0
    var emotion: Emotion
    var body: some View {
        Form {
            Section(header: Text("Description")) {
                ZStack {
                    TextEditor(text: $description)
                }
            }
            Section(header: Text("Intensity")) {
                Slider(value: $intensity)
            }
            Button {
                
            } label: {
                Text("Confirm")
            }
        }
        .navigationTitle("\(emotion.name)")
        .navigationBarItems(trailing: Button("Cancel") {
            showSheet = false
        })
    }
}

struct RecordEmotionView_Previews: PreviewProvider {
    static var previews: some View {
        RecordEmotionView(showSheet: .constant(true), emotion: Emotion(name: "Happy", color: Color.yellow))
    }
}
