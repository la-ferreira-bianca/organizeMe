//
//  Controllers+Identifiable.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

protocol ControllersIdentifiable {}

//MARK: - ViewController
extension ControllersIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }

    static var xibIdentifier: String {
        return String(describing: self)
    }
}

//MARK: - CollectionView
extension ControllersIdentifiable where Self: UICollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: ControllersIdentifiable {}

//MARK: - TableView
extension ControllersIdentifiable where Self: UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ControllersIdentifiable {}

