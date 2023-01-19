//
//  AppCoordinator.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

protocol BasicCoordinatorProtocol: AnyObject {
    func presentNextStep()
    func presentPreviousStep()
}

class AppCoordinator: AppCoordinatable {
    //MARK: - Properties
    var injector: AppCoordinatorDependencyInjector
    var appDelegate: AppDelegate
    var window: UIWindow?
    lazy var myThingsCoordinator = MyThingsCoordinator(baseCoordinator: self)

    init(window: UIWindow, navigation: UINavigationController, appDelegate: AppDelegate) {
        self.window = window
        self.injector = AppCoordinatorDependencyInjector(navigation: navigation)
        self.appDelegate = appDelegate
    }

    //MARK: - Functions
    func start() {
        injector.myThingsViewModel.appCoordinator = self
        injector.myThingsViewModel.coordinator = myThingsCoordinator
        injector.navigationController.setViewControllers([injector.myThingsViewController], animated: true)
    }

    func presentNextStep(_ controller: UIViewController, animated: Bool) {
        injector.navigationController.pushViewController(controller, animated: animated)
    }

    func presentPreviousStep() {
        injector.navigationController.popViewController(animated: true)
    }

    func present(_ controller: UIViewController, animated: Bool?) {
        injector.navigationController.present(controller, animated: animated ?? true)
    }

    func popToViewController(_ viewController: UIViewController) {
        injector.navigationController.popToViewController(viewController, animated: true)
    }

    func presentOverContext(_ viewController: UIViewController) {
        if UIApplication.shared.topController == viewController {
            UIApplication.shared.topController?.dismiss(animated: false, completion: {
                UIApplication.shared.topController?.present(viewController, animated: true)
            })
        } else {
            UIApplication.shared.topController?.present(viewController, animated: true)
        }
    }
}
