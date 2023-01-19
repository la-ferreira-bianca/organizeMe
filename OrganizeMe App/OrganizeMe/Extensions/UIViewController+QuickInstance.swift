//
//  UIViewController+QuickInitiation.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 01/04/22.
//

import UIKit

extension UIViewController: ControllersIdentifiable {
    static func instantiate<T: UIViewController>() -> T {
        guard let controller = UIStoryboard(name: T.storyboardIdentifier.replacingOccurrences(of: "Controller", with: "").replacingOccurrences(of: "View", with: ""), bundle: T.bundle).instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.storyboardIdentifier)")}
        return controller
    }

    static func instantiateFromXib<T: UIViewController>() -> T {
        return T(nibName: T.xibIdentifier.replacingOccurrences(of: "Controller", with: "").replacingOccurrences(of: "View", with: ""), bundle: .main)
    }

    static var bundle: Bundle {
        return Bundle(for: self)
    }
}
