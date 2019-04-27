//
//  ViewController.swift
//  TemuMetu
//
//  Created by Daniel Aditya Istyana on 25/04/19.
//  Copyright © 2019 Daniel Aditya Istyana. All rights reserved.
//

import UIKit
import FlagPhoneNumber

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: FPNTextField!
    @IBOutlet weak var welcomeButton: UIButton!
    @IBAction func welcomeButtonTapped(_ sender: Any) {
        let otpVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "OTPVerificationController") as! OTPVerificationController
        navigationController?.pushViewController(otpVc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneNumberTextField.setFlag(for: .ID)
        phoneNumberTextField.minimumFontSize = 17
        phoneNumberTextField.borderStyle = .none
        
        welcomeButton.setTitle("Welcome", for: .normal)
        welcomeButton.setTitleColor(.white, for: .normal)
        welcomeButton.backgroundColor = UIColor(red: 172/255, green: 193/255, blue: 194/255, alpha: 1)
        welcomeButton.layer.cornerRadius = 4
        
        setupConstraint()
    }
    
    // Hide navigation bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    fileprivate func setupConstraint() {
        
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 48).isActive = true
        phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -48).isActive = true
        phoneNumberTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -40).isActive = true
        phoneNumberTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        welcomeButton.translatesAutoresizingMaskIntoConstraints = false
        welcomeButton.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 24).isActive = true
        welcomeButton.leadingAnchor.constraint(equalTo: phoneNumberTextField.leadingAnchor).isActive = true
        welcomeButton.trailingAnchor.constraint(equalTo: phoneNumberTextField.trailingAnchor).isActive = true
        welcomeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }

}

