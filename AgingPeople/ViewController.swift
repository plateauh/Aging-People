//
//  ViewController.swift
//  AgingPeople
//
//  Created by Najd Alsughaiyer on 25/12/2021.
//

import UIKit

class ViewController: UIViewController {

    var people = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
//        tableView.delegate = self
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath)
        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = generateRandomAge()
        return cell
    }
    
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        cell.detailTextLabel?.text = generateRandomAge()
//    }
    
    func generateRandomAge() -> String {
        return "\(Int.random(in: 5...95)) years old"
    }
    
}

