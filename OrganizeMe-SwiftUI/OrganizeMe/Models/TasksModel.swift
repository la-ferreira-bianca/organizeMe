//
//  TasksModel.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 14/04/22.
//

import UIKit

var categories: [TaskCategory] = TaskCategory.allCases

struct Task {
//    var name: String
//    var description: String?
//    var taskColor: UIColor
}

enum TaskCategory: CaseIterable {
    case task
    case reminder
    case payment
    case other
    case none

    var description: String {
        switch self {
        case .task:
            return "Task"
        case .reminder:
            return "Reminder"
        case .payment:
            return "Payment"
        case .other:
            return "Other"
        case .none:
            return ""
        }
    }
}

extension TaskCategory: Identifiable {
    var id: Self { self }
}
