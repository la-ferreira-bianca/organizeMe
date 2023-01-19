//
//  AddThingsPopUpViewModel.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 12/04/22.
//

class AddThingsPopUpViewModel: AddThingsPopUpViewModelProtocol {

    //MARK: - Properties
    var popUpTitle: String = ""
    var coordinator: MyThingsCoordinatorProtocol?

    //MARK: - Functions
    func presentPreviousStep() {
        coordinator?.shouldOpenPopUpWithCategory = .none
        coordinator?.presentPreviousStep()
    }

    func getPopUpTitle() -> String {
        return "Add new \(popUpTitle):"
    }
    //MARK: - Private Functions
}
