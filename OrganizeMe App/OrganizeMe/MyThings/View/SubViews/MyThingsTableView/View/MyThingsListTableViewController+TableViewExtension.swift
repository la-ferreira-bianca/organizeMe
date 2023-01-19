//
//  MyThingsListTableViewController+TableViewExtension.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 13/04/22.
//

import UIKit

extension MyThingsListTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        //TODO: - changes sections to show the things count
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyThingsTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        return cell
    }
}
