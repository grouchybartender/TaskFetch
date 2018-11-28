//
//  ViewController.swift
//  TaskFetch
//
//  Created by Jonathan Compton on 11/28/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit

enum UserType {
    case localUser
    case createUser
    case addExistingAccount
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var users = ["user1", "user2", "user3"]
    var selectedIndex: Int!
    var userType: UserType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLoginSignUpVC" {
            let destinationVC = segue.destination as! LoginSignUpVC
            destinationVC.userType = self.userType
        }
    }
    
    
    @IBAction func createNewUserTapped(_ sender: Any) {
        userType = .createUser
        performSegue(withIdentifier: "toLoginSignUpVC", sender: self)
    }
    
    @IBAction func addExistingAccountTapped(_ sender: Any) {
        userType = .addExistingAccount
        performSegue(withIdentifier: "toLoginSignUpVC", sender: self)
    }
}
    


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = users[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        userType = .localUser
        performSegue(withIdentifier: "toLoginSignUpVC", sender: self)
    }
    
}
