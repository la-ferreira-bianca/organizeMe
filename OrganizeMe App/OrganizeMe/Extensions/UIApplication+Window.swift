//
//  UIApplication+Window.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 12/04/22.
//

import UIKit

extension UIApplication {
    var topController: UIViewController? {
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        }
        return nil
    }
}
