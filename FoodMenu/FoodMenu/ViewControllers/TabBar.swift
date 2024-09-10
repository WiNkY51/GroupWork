//
//  TabBarController.swift
//  FoodMenu
//
//  Created by Winky51 on 09.09.2024.
//

import UIKit

class TabBarController: UITabBarController {
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = .black
        tabBarItem.badgeColor = .cyan
        luk()
    }
/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let homeVC = segue.destination as? HomeViewController
        let menuVC = segue.destination as? MenuTableViewController
       
    }
    */
    func luk() {
        if user == nil {
            print("No User")
            showRegVC()
        } else {
            print("User")
        }
    }
    
    func showRegVC() {
      //  performSegue(withIdentifier: "regUser", sender: nil)
        
    }
    

}
