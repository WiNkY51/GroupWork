//
//  RegistrationViewController.swift
//  FoodMenu
//
//  Created by Winky51 on 10.09.2024.
//

import UIKit

class RegistrationViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true

    }

    @IBAction func saveAction() {
        view.endEditing(true)
        dismiss(animated: true)
    }


}
