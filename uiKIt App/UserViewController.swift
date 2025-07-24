//
//  UserViewController.swift
//  uiKIt App
//
//  Created by Kerolos on 24/07/2025.
//

import UIKit

class UserViewController: UIViewController {

    lazy var signOutBtn : UIButton = {
        let button = UIButton()
        button.setTitle("SignOut", for: .normal)
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
        let guestTabBar = GuestTabBarViewController()
        
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeWindowViewController(vc: guestTabBar)
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
