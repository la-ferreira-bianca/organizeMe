//
//  Thing.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 31/03/22.
//

import Foundation

struct Thing {
    let thing: ThingDetails
}

struct ThingDetails {
    let name: String
    let description: String
    let category: ThingCategory
    let thingColor: ThingColor
    let dueDate: Date?
    let createdAt: Date
    let thingProgression: ThingProgression
    let shouldRemindMe: Bool
}

enum ThingCategory {
    case task
    case payment
    case reminder
    case other
    case none
}

enum ThingColor {
    case green
    case blue
    case orange
    case red
}

enum ThingProgression {
    case todo
    case doing
    case done
    case late
}
