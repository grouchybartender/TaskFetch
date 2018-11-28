//
//  Task+CoreDataProperties.swift
//  TaskFetch
//
//  Created by Jonathan Compton on 11/28/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var title: String?
    @NSManaged public var details: String?
    @NSManaged public var user: LocalUser?

}
