//
//  LocalUser+CoreDataProperties.swift
//  TaskFetch
//
//  Created by Jonathan Compton on 11/28/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//
//

import Foundation
import CoreData


extension LocalUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LocalUser> {
        return NSFetchRequest<LocalUser>(entityName: "LocalUser")
    }

    @NSManaged public var name: String?
    @NSManaged public var firebaseID: String?
    @NSManaged public var email: String?
    @NSManaged public var tasks: NSSet?

}

// MARK: Generated accessors for tasks
extension LocalUser {

    @objc(addTasksObject:)
    @NSManaged public func addToTasks(_ value: Task)

    @objc(removeTasksObject:)
    @NSManaged public func removeFromTasks(_ value: Task)

    @objc(addTasks:)
    @NSManaged public func addToTasks(_ values: NSSet)

    @objc(removeTasks:)
    @NSManaged public func removeFromTasks(_ values: NSSet)

}
