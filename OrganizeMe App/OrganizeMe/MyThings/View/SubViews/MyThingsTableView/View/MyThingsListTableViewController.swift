//
//  MyThingsListTableViewController.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 13/04/22.
//

import UIKit

class MyThingsListTableViewController: UITableViewController {

    //MARK: - Properties
    @IBOutlet weak var myThingsListTableView: UITableView?

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Functions
    func setupThingsListTableView() {
        myThingsListTableView?.scrollsToTop = true
        myThingsListTableView?.dataSource = self
        myThingsListTableView?.delegate = self

        registerNibs()
    }

    func registerNibs() {
        let cell = UINib(nibName: "MyThingsCell", bundle: Bundle(for: MyThingsTableViewCell.self))
        myThingsListTableView?.register(cell, forCellReuseIdentifier: MyThingsTableViewCell.reuseIdentifier)
    }
}
