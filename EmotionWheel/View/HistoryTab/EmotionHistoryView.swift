//
//  EmotionHistoryView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-16.
//

import SwiftUI
import CoreData

struct EmotionHistoryView: View {
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \EmotionRecord.timestamp, ascending: true)]) var emotionRecords: FetchedResults<EmotionRecord>
    var body: some View {
        List(emotionRecords) { record in
            VStack {
                HStack {
                    Text("\(record.name ?? "-")")
                    Spacer()
                    Text("\(record.dateString() ?? "-")")
                }
                HStack {
                    Text("Intensity: \(record.intensityString())")
                }
                HStack {
                    Text("\(record.note ?? "-")")
                }
            }
        }
    }
}

struct EmotionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionHistoryView().environment(\.managedObjectContext, CoreDataStack.preview.managedObjectContext)
    }
}
