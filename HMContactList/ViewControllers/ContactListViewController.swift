//
//  ContactListViewController.swift
//  HMContactList
//
//  Created by Дрозд Матвей on 21.03.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var persons: [Person]!

    //Мы не вынесли эти методы в расширение, потому что у нас итак почти пустой класс
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? ContactDetailsViewController else { return }
            detailVC.persons = persons[indexPath.row]
        }
    }
    
}
