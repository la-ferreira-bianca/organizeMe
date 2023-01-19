//
//  CoordinatorPresentable.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

protocol CoordinatorPresentable {
    func presentNextStep(_ controller: UIViewController, animated: Bool)
    func presentPreviousStep()
    func present(_ controller: UIViewController, animated: Bool?)
    func popToViewController(_ viewController: UIViewController)
    func presentOverContext(_ viewController: UIViewController)
}
