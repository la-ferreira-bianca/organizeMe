//
//  MyThingsAddCategoryPopUPViewController.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 06/04/22.
//

import Foundation
import UIKit

class MyThingsAddCategoryPopUPViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var popUpView: UIView?
    @IBOutlet weak var popTitleLabel: UILabel?
    @IBOutlet weak var thingName: UITextField?
    @IBOutlet weak var thingDescription: UITextField?
    @IBOutlet weak var thingColor: UISegmentedControl?
    @IBOutlet weak var concludeButton: UIButton?
    @IBOutlet weak var cancelButton: UIButton?


    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Actions
    @IBAction func didTapCancelButton() {

    }

    @IBAction func didTapContinueButton() {

    }
}
