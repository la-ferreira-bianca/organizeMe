//
//  AppDelegate.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 31/03/22.
//

import UIKit

protocol AppCoordinatable: CoordinatorPresentable {
    func start()
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    //MARK: - Properties
    var window: UIWindow?
    var startApp: Bool = false
    var coordinator: AppCoordinatable?
    var injector = AppDelegateDependencyInjector()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = setupWindow()
        window.rootViewController = injector.navigationController
        window.makeKeyAndVisible()
        let controller = AppCoordinator(window: window, navigation: injector.navigationController, appDelegate: self)
        controller.start()
        return true
    }
}
