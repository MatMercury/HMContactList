//
//  TabBarViewController.swift
//  HMContactList
//
//  Created by Дрозд Матвей on 12.04.2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    //Передаём данные во вьюконтрллеры в таббаре
    private func setupViewControllers() {
        //У нас массив вьюконтрллеров в таббаре
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let persons = Person.getContactList()
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
    

}
 
