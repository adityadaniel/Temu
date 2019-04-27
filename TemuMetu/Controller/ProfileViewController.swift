//
//  ProfileViewController.swift
//  TemuMetu
//
//  Created by Daniel Aditya Istyana on 26/04/19.
//  Copyright © 2019 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissProfileController))
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    @objc func dismissProfileController() {
        self.dismiss(animated: true, completion: nil)
    }

}
