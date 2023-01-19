//
//  UITableView+QuickInstance.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

extension UITableView: ControllersIdentifiable {
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }

//    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>() -> T {
//        guard let headerFooterView = dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as? T else {
//            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
//        }
//        return headerFooterView
//    }
}
