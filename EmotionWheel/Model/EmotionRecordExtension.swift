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
}
