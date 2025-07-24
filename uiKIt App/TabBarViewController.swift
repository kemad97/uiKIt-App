//
//  UserTabBarViewController.swift
//  uiKIt App
//
//  Created by Kerolos on 24/07/2025.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabs()
    }
    
    func configureTabs() {
        
        let vc1 = HomeViewController()
        let vc2 = SearchViewController()
        let vc3 = UserViewController()
        
        vc1.tabBarItem.image = UIImage (systemName: "house")
        vc2.tabBarItem.image = UIImage (systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage (systemName: "person")
        
        vc1.tabBarItem.title = "Home"
        vc1.title = "home"
        
        vc2.tabBarItem.title = "Search"
        vc3.tabBarItem.title = "User"
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .darkGray
        
        setViewControllers([nav1,nav2,nav3], animated: true)
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
