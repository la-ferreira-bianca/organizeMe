//
//  AddThingsPopUpViewController+UITextFieldDelegate.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 13/04/22.
//

import UIKit

extension AddThingsPopUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        thingTitle.resignFirstResponder()
        thingDescription.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        createThingButton.isEnabled = thingTitle.hasText
    }
}
