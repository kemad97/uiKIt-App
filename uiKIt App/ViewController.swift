//
//  ViewController.swift
//  uiKIt App
//
//  Created by Kerolos on 23/07/2025.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button : UIButton = {
        let button = UIButton()
        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapBtn), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemRed
        configUI()
    }

    func configUI () {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func didTapBtn() {
        self.navigationController?.pushViewController(NextViewController(), animated: true)
    }

}

