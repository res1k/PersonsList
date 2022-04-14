//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Andrey Zhivotov on 09.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sendData()
    }
    

    private func sendData() {
        let persons = Person.getUserInfo()
        guard let personsListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let personInfoVC = viewControllers?.last as? SectorPersonViewController else { return }
        
        personsListVC.persons = persons
        personInfoVC.persons = persons
    }

}
