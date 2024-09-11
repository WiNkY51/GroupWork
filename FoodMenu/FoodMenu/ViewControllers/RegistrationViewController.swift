//
//  RegistrationViewController.swift
//  FoodMenu
//
//  Created by Winky51 on 10.09.2024.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var adressTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let user = UserModel.shared
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        nameTF.delegate = self
        surnameTF.delegate = self

    }

    @IBAction func saveAction() {
        view.endEditing(true)
        
        guard let name = nameTF.text else { return }
        guard let surname = surnameTF.text else { return }
        guard let adress = adressTF.text else { return }
        guard let phone = phoneTF.text else { return }
        guard let password = passwordTF.text else { return }
        
        user.name = name
        user.surname = surname
        user.adress = adress
        user.phone = phone
        user.password = password
        
        dismiss(animated: true)
    }
   
    private func showAlert(_ title: String, message: String ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }


}
//MARK: - TextFieldDelegate
extension RegistrationViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if textField.text == "" {
            showAlert("Текстовое поле пустое!", message: "Введите корректные данные")
            
        }
        
    }
}
