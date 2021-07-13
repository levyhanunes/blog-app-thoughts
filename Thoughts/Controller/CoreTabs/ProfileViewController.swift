//
//  ProfileViewController.swift
//  Thoughts
//
//  Created by user on 13/07/21.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSingOut))
    }
    @objc private func didTapSingOut(){}
}
