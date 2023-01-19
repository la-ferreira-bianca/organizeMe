//
//  MyThingsViewController.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

class MyThingsViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var thingsTableView: UITableView?
    @IBOutlet weak var welcomeLabel: UILabel?
    @IBOutlet weak var newThingLabel: UILabel?

    //MARK: - Properties
    var viewModel = MyThingsViewModel()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMyThingsView()
        setupThingsTableView()
    }

    //MARK: - Functions
    func setupThingsTableView() {
        thingsTableView?.scrollsToTop = false
        thingsTableView?.dataSource = self
        thingsTableView?.delegate = self
        thingsTableView?.backgroundColor = #colorLiteral(red: 0.9627727866, green: 0.7932500243, blue: 0.461648643, alpha: 1)

        registerNibs()
    }

    func setupMyThingsView() {
        view.backgroundColor = #colorLiteral(red: 0.5921568627, green: 0.4470588235, blue: 0.6901960784, alpha: 1)

        //MARK: - Welcome label
        welcomeLabel?.textColor = .white

        //MARK: - New Thing label
        newThingLabel?.textColor = .white

    }

    func registerNibs() {
        let thingsCategoriesNibName = UINib(nibName: "ThingsCategories", bundle: Bundle(for: ThingsCategoriesTableViewCell.self))

        thingsTableView?.register(thingsCategoriesNibName, forCellReuseIdentifier: ThingsCategoriesTableViewCell.reuseIdentifier)
    }
}
