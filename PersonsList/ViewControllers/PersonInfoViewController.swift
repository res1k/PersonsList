//
//  PersonInfoViewController.swift
//  PersonsList
//
//  Created by Andrey Zhivotov on 09.04.2022.
//

import UIKit

class PersonInfoViewController: UIViewController {

    var person: Person!
   
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
