//
//  AppDelegateDependencyInjector.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

class AppDelegateDependencyInjector {

    lazy var navigationController: UINavigationController = {
        let navigation = UINavigationController()
        navigation.navigationBar.tintColor = .blue
        return navigation
    }()
}
