//
//  MyThingsDepedencyInjector.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 12/04/22.
//

import Foundation

class MyThingsDepedencyInjector {
    //MARK: - View Controllers
    lazy var myThingsViewController: MyThingsViewController = {
        let controller: MyThingsViewController = MyThingsViewController.instantiate()
        controller.viewModel = myThingsViewModel
        return controller
    }()

    lazy var addNewThingViewController: AddThingsPopUpViewController = {
        let controller: AddThingsPopUpViewController = AddThingsPopUpViewController.instantiate()
        return controller
    }()

    //MARK: - View Models
    lazy var myThingsViewModel: MyThingsViewModel = {
        return MyThingsViewModel()
    }()
}
