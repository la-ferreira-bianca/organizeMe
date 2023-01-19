//
//  AppDelegate+Extensions.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

extension AppDelegate {

    //MARK: - Functions
    func start() {
        coordinator?.start()
    }

    func setupWindow() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        return window
    }
}
