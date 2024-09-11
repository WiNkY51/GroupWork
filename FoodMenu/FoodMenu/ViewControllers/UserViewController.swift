//
//  UserViewController.swift
//  FoodMenu
//
//  Created by Winky51 on 10.09.2024.
//

import UIKit

final class UserViewController: UIViewController {
    
    let user = UserModel.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showTheUser()
        printMessage()
    }
    
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function)")
    }
    
    private func showTheUser() {
        guard user.registrationStatus else {
            performSegue(withIdentifier: "regUser", sender: nil)
            return
        }
        
        navigationItem.title = user.fullName
    }
}
