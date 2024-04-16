//
//  ContactDetailsViewController.swift
//  HMContactList
//
//  Created by Дрозд Матвей on 12.04.2024.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = persons.fullName
        phoneNumberLabel.text = "Mobile: \(persons.phoneNumber)"
        emailLabel.text = "Email: \(persons.email)"
    }

}
