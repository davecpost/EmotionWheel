//
//  EmotionHistoryListRowView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-11-12.
//

import SwiftUI

struct EmotionHistoryListRowView: View {
    var record: EmotionRecord
    @State var showDetail = false
    var body: some View {
        ZStack {
            Capsule()
                .fill(Emotion.getColor(for: record.name))
                .onTapGesture {
                    withAnimation {
                        showDetail.toggle()
                    }
                }
            VStack {
                Text("\(record.name ?? "-")").padding()
                if showDetail {
                    Text("\(record.note ?? "No Notes")")
                        .padding()
                    Text("Intensity: \(record.intensityString())")
                        .padding()
                }
            }
            .padding()
        }
    }
}

struct EmotionHistoryListRowView_Previews: PreviewProvider {
    static var previews: some View {
        let context = CoreDataStack.preview.managedObjectContext
        EmotionHistoryListRowView(record: EmotionRecord.preview(in: context))
    }
}
