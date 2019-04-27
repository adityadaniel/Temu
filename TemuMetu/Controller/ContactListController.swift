//
//  ContactListController.swift
//  TemuMetu
//
//  Created by Daniel Aditya Istyana on 25/04/19.
//  Copyright © 2019 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class ContactListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    struct Contact {
        var name: String
        var profileImage: String
        var pin: String
    }
    
    let contactList: [Contact] = [
        Contact(name: "Daniel", profileImage: "icon", pin: "PIN: 2510"),
        Contact(name: "Marcell", profileImage: "icon", pin: "PIN: 2510"),
        Contact(name: "Dilla", profileImage: "icon", pin: "PIN: 2510"),
        Contact(name: "Widya", profileImage: "icon", pin: "PIN: 2510"),
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Friends"
        self.navigationItem.hidesBackButton = true
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(handleAddContact))
        self.navigationItem.rightBarButtonItem?.tintColor = .white
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: self, action: #selector(handleOpenProfile))
        self.navigationItem.leftBarButtonItem?.tintColor = .white
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell
        let cellData = contactList[indexPath.row]
        cell.nameLabel.text = cellData.name
        cell.pinNumberLabel.text = cellData.pin
        cell.profilePictureImageView.image = UIImage(named: cellData.profileImage)
        return cell
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @objc fileprivate func handleAddContact() {
    }
    
    @objc fileprivate func handleOpenProfile() {
        performSegue(withIdentifier: "openProfileController", sender: self)
    }

}


class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profilePictureImageView: UIImageView! {
        didSet {
            profilePictureImageView.layer.cornerRadius = self.profilePictureImageView.frame.height / 2
            profilePictureImageView.clipsToBounds = true
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pinNumberLabel: UILabel!
    
}
