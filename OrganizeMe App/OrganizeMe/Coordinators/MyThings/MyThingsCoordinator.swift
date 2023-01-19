//
//  MyThingsCoordinator.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 06/04/22.
//

class MyThingsCoordinator: MyThingsCoordinatorProtocol {

    //MARK: - Properties
    var baseCoordinator: CoordinatorPresentable
    var injector = MyThingsDepedencyInjector()
    var state: MyThingsRoutingState = .MyThings
    var shouldOpenPopUpWithCategory: ThingCategory = .task

    init(baseCoordinator: CoordinatorPresentable) {
        self.baseCoordinator = baseCoordinator
        injector.myThingsViewController.viewModel.coordinator = self
    }

    func presentNextStep() {
        switch state {
        case .MyThings:
            switch shouldOpenPopUpWithCategory {
            case .task:
                state = .AddNewThing
                injector.addNewThingViewController.viewModel.popUpTitle = "Task"
                injector.addNewThingViewController.viewModel.coordinator = self
                baseCoordinator.presentOverContext(injector.addNewThingViewController)
            case .payment:
                state = .AddNewThing
                injector.addNewThingViewController.viewModel.popUpTitle = "Payment"
                injector.addNewThingViewController.viewModel.coordinator = self
                baseCoordinator.presentOverContext(injector.addNewThingViewController)
            case .reminder:
                state = .AddNewThing
                injector.addNewThingViewController.viewModel.popUpTitle = "Reminder"
                injector.addNewThingViewController.viewModel.coordinator = self
                baseCoordinator.presentOverContext(injector.addNewThingViewController)
            case .other:
                state = .AddNewThing
                injector.addNewThingViewController.viewModel.popUpTitle = "Others"
                injector.addNewThingViewController.viewModel.coordinator = self
                baseCoordinator.presentOverContext(injector.addNewThingViewController)
            default:
                break
            }
        case .AddNewThing:
            print("teste")
        }
    }

    func presentPreviousStep() {
        switch state {
        case .MyThings:
            print("thats not possible")
        case .AddNewThing:
            state = .MyThings
            shouldOpenPopUpWithCategory = .none
            injector.addNewThingViewController.dismiss(animated: true)
            baseCoordinator.presentPreviousStep()
        }
    }
}

