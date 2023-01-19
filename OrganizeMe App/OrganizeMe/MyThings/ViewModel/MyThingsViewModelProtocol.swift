//
//  MyThingsViewModelProtocol.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 13/04/22.
//

protocol MyThingsViewModelProtocol {
    //MARK: - Properties
    var progression: ThingProgression { get }
    var thingCardColor: ThingColor { get }
    var shouldRemindMe: Bool { get }

    //MARK: - Functions
    func remindMeThatThing()
    func getThingsCategories() -> [ThingsCategoriesModel]
    func didTapAddTask()
    func didTapAddReminder()
    func didTapAddPayment()
    func didTapAddOther()
}
