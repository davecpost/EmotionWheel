//
//  EmotionRecordExtension.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-17.
//

import Foundation
import CoreData

extension EmotionRecord {
    static func insert(in context: NSManagedObjectContext, name: String, note: String, intensity: Double) {
        let record = EmotionRecord(context: context)
        record.name = name
        record.note = note
        record.intensity = intensity
        record.timestamp = Date()
    }
    
    static func preview() -> EmotionRecord {
        let record: EmotionRecord = EmotionRecord()
        record.intensity = 0.5
        record.name = "happy"
        record.note = "I am happy"
        record.timestamp = Date()
        return record
    }
    
    func dateString() -> String? {
        guard let date = self.timestamp else {
            return nil
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, h:mm a"
        return dateFormatter.string(from: date)
    }
    
    func intensityString() -> String {
        return String(format: "%.2f", self.intensity)
    }
}
