//
//  RecordEmotionView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import SwiftUI
import CoreData

struct RecordEmotionView: View {
    var emotion: Emotion
    @State private var description: String = ""
    @State private var intensity: Double = 0
    @Environment(\.managedObjectContext) var managedObjectContext: NSManagedObjectContext
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
                EmotionRecord.insert(in: managedObjectContext, name: emotion.name, note: description, intensity: intensity)
            } label: {
                Text("Confirm")
            }
        }
    }
}

struct RecordEmotionView_Previews: PreviewProvider {
    static var previews: some View {
        RecordEmotionView(emotion: Emotion(name: "Happy", color: Color.yellow))
    }
}
