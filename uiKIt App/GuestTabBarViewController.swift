//
//  GuestTabBarViewController.swift
//  uiKIt App
//
//  Created by Kerolos on 24/07/2025.
//

import UIKit

class GuestTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTaps ()
    }
    
    func  configTaps() {
        let vc1 = LoginViewController ()
        let vc2 = SearchViewController()
        
        
        vc1.tabBarItem.image = UIImage (systemName: "house")
        vc2.tabBarItem.image = UIImage (systemName: "magnifyingglass")
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        setViewControllers([nav1,nav2], animated: true)
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
