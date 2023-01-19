//
//  UICollectionView+QuickInitiation.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 01/04/22.
//

import UIKit

extension UICollectionView: ControllersIdentifiable {

    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            // TODO: set crashlytics to warn here
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
