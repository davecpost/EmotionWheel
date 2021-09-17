//
//  CoreDataStack.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-17.
//

import Foundation
import CoreData

class CoreDataStack {
    private let persistentContainer: NSPersistentContainer
    var managedObjectContext: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    init(modelName: String) {
        persistentContainer = {
            let container = NSPersistentContainer(name: modelName)
            container.loadPersistentStores(completionHandler: { description, error in
                if let error = error {
                    print(error)
                }
            })
            return container
        }()
    }
    
    func save() {
        guard managedObjectContext.hasChanges else { return }
        do {
            try managedObjectContext.save()
        } catch {
            print(error)
        }
    }
}
