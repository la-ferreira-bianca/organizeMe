//
//  AppCoordinatorDependencyInjector.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

class AppCoordinatorDependencyInjector {
    //MARK: - Properties
    var navigationController: UINavigationController

    init(navigation: UINavigationController) {
        self.navigationController = navigation
    }

    //MARK: - ViewControllers
    lazy var myThingsViewController: MyThingsViewController = {
        let controller: MyThingsViewController = MyThingsViewController.instantiate()
        controller.viewModel = myThingsViewModel
        return controller
    }()

    //MARK: - View Models
    lazy var myThingsViewModel: MyThingsViewModel = {
        return MyThingsViewModel()
    }()
}
