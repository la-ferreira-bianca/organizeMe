//
//  AddNewTaskViewModel.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 22/04/22.
//

import Foundation

class AddNewTaskViewModel: ObservableObject {
    @Published var task = Task()
    @Published var showLoading: Bool = false

    var disableCreateButton: Bool = true
}
