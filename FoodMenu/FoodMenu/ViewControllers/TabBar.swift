//
//  TabBarController.swift
//  FoodMenu
//
//  Created by Winky51 on 09.09.2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = .black
        tabBarItem.badgeColor = .cyan
    }
/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let homeVC = segue.destination as? HomeViewController
        let menuVC = segue.destination as? MenuTableViewController
       
    }
    */
    
    

}
