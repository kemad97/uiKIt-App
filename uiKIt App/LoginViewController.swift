//
//  LoginViewController.swift
//  uiKIt App
//
//  Created by Kerolos on 24/07/2025.
//

import UIKit

class LoginViewController: UITabBarController {

  
    lazy var signOutBtn : UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(didTapSignOut ) , for: .touchUpInside)
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        configUI()

    }
    
    func configUI () {
        view.addSubview(signOutBtn)
        signOutBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signOutBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signOutBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func didTapSignOut() {
        
        //self.navigationController?.pushViewController(GuestTabBarViewController(), animated: true)
        let tabBar = TabBarViewController()
        
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeWindowViewController(vc: tabBar)
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
