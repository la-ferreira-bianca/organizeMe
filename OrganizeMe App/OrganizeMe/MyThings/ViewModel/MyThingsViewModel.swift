//
//  MyThingViewModel.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 31/03/22.
//

import UIKit

enum MyThingsSections: Int {
    case categories = 0
    case myThings = 1
}

class MyThingsViewModel: MyThingsViewModelProtocol {
    //MARK: - Properties
    var coordinator: MyThingsCoordinatorProtocol?
    var appCoordinator: AppCoordinatable?
    var thingName: String = ""
    var thingDescription: String = ""
    var thingCategory: ThingCategory = .other
    var dueDate: Date? = nil
    var createdAt: Date = Date.distantFuture
    var progression: ThingProgression = .todo
    var thingCardColor: ThingColor = .green
    var shouldRemindMe: Bool = false

    //MARK: - Functions
    func remindMeThatThing() {
        print("test")
    }

    func getThingsCategories() -> [ThingsCategoriesModel] {
        let categories: [ThingsCategoriesModel] = [
            ThingsCategoriesModel(
                categoryTitle: "Task",
                categoryImage: UIImage(named: "task-icon")!,
                categoryColor: #colorLiteral(red: 0, green: 0.7972849607, blue: 0.7983686328, alpha: 1)
            ),
            ThingsCategoriesModel(
                categoryTitle: "Reminder",
                categoryImage: UIImage(named: "reminder-icon")!,
                categoryColor: #colorLiteral(red: 0, green: 0.7972849607, blue: 0.7983686328, alpha: 1)
            ),
            ThingsCategoriesModel(
                categoryTitle: "Payment",
                categoryImage: UIImage(named: "payment-icon")!,
                categoryColor: #colorLiteral(red: 0, green: 0.7972849607, blue: 0.7983686328, alpha: 1)
            ),
            ThingsCategoriesModel(
                categoryTitle: "Others",
                categoryImage: UIImage(named: "others-icon")!,
                categoryColor: #colorLiteral(red: 0, green: 0.7972849607, blue: 0.7983686328, alpha: 1)
            )
        ]
        return categories
    }

    func didTapAddTask() {
        coordinator?.shouldOpenPopUpWithCategory = .task
        coordinator?.presentNextStep()
    }

    func didTapAddReminder() {
        coordinator?.shouldOpenPopUpWithCategory = .reminder
        coordinator?.presentNextStep()
    }

    func didTapAddPayment() {
        coordinator?.shouldOpenPopUpWithCategory = .payment
        coordinator?.presentNextStep()
    }

    func didTapAddOther() {
        coordinator?.shouldOpenPopUpWithCategory = .other
        coordinator?.presentNextStep()
    }
}
