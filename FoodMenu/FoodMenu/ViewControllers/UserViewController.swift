//
//  UserViewController.swift
//  FoodMenu
//
//  Created by Winky51 on 10.09.2024.
//

import UIKit

class UserViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        if user == nil {
            performSegue(withIdentifier: "regUser", sender: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
