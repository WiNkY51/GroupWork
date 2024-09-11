//
//  RegisterViewController.swift
//  FoodMenu
//
//  Created by Winky51 on 09.09.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    let user = UserModel.shared
    
    @IBOutlet var phoneTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("reg")
        
      //  navigationItem.hidesBackButton = true

    }
    
    @IBAction func loginAction() {
       
        guard let phone = phoneTF.text, let password = passwordTF.text else { return }
        if phone == user.phone && password == user.password {
            user.registrationStatus = true
            dismiss(animated: true)
        }
    }

    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
    }
}
