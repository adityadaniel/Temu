//
//  OTPVerificationController.swift
//  TemuMetu
//
//  Created by Daniel Aditya Istyana on 25/04/19.
//  Copyright © 2019 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class OTPVerificationController: UIViewController {

    @IBOutlet weak var otpTextField: UITextField!
    @IBOutlet weak var verifyButton: UIButton! {
        didSet {
            self.verifyButton.backgroundColor = .white
            self.verifyButton.setTitle("Verify", for: .normal)
            self.verifyButton.setTitleColor(.black, for: .normal)
            self.verifyButton.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    @IBAction func verifyButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "moveToMainScreen", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraint()
    }
    
    fileprivate func setupConstraint() {
        otpTextField.translatesAutoresizingMaskIntoConstraints = false
        otpTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        otpTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
        otpTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 260).isActive = true
        otpTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        verifyButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        verifyButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        verifyButton.topAnchor.constraint(equalTo: otpTextField.bottomAnchor, constant: 20).isActive = true
        verifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}
