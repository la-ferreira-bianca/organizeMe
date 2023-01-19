//
//  MyThingsViewController+TableView.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

extension MyThingsViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case MyThingsSections.categories.rawValue:
            let cell: ThingsCategoriesTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            cell.collectionView.delegate = self
            cell.collectionView.dataSource = self
            cell.setupViewCell()
            return cell
        case MyThingsSections.myThings.hashValue:
            let cell: MyThingsTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        default:
            return UITableViewCell()
        }
    }
}
