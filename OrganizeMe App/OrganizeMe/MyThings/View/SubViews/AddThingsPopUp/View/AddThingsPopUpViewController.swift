//
//  AddThingsPopUpViewController.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 12/04/22.
//

import UIKit

class AddThingsPopUpViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var popUpTitle: UILabel!
    @IBOutlet weak var thingTitle: UITextField!
    @IBOutlet weak var thingDescription: UITextField!
    @IBOutlet weak var thingColor: UISegmentedControl!
    @IBOutlet weak var shouldRemindMe: UISwitch!
    @IBOutlet weak var dueDateLabel: UILabel!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    @IBOutlet weak var createThingButton: UIButton!

    //MARK: - Properties
    var viewModel = AddThingsPopUpViewModel()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegates()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupViews()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.presentPreviousStep()
        resetView()
    }

    //MARK: - Actions
    @IBAction func segmentIndexChanged(_ sender: Any) {
        setupSegmentControl()
    }

    @IBAction func toggleSwitch(_ sender: Any) {
        dueDate(shouldShow: shouldRemindMe.isOn)
    }

    @IBAction func didTapCreateThing(_ sender: Any) {
        //TODO: - sendo to view model the thing populateded
        viewModel.presentPreviousStep()
    }
    //MARK: - Functions
    func setupViews() {
        popUpView.layer.cornerRadius = 10

        createThingButton.setTitle("Create", for: .normal)
        createThingButton.isEnabled = false

        thingColor.selectedSegmentTintColor = .green
        thingColor.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)

        popUpTitle.text = viewModel.getPopUpTitle()

        shouldRemindMe.isOn = false
        dueDate(shouldShow: shouldRemindMe.isOn)
    }

    func resetView() {
        thingColor.selectedSegmentIndex = .zero
        thingColor.selectedSegmentTintColor = .green
    }

    //MARK: - Private Functions
    private func setupDelegates() {
        thingTitle.delegate = self
        thingDescription.delegate = self
    }

    private func setupSegmentControl() {
        switch thingColor.selectedSegmentIndex {
        case 0:
            thingColor.selectedSegmentTintColor = .green
        case 1:
            thingColor.selectedSegmentTintColor = .blue
        case 2:
            thingColor.selectedSegmentTintColor = .orange
        case 3:
            thingColor.selectedSegmentTintColor = .red
        default:
            break
        }
    }

    private func dueDate(shouldShow: Bool) {
        if shouldShow {
            dueDateLabel.text = "Due date:"
            dueDatePicker.alpha = 1
        } else {
            dueDateLabel.text = ""
            dueDatePicker.alpha = 0
        }
    }
}
