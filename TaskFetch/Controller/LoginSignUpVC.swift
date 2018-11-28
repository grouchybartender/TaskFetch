//
//  LoginSignUpVC.swift
//  TaskFetch
//
//  Created by Jonathan Compton on 11/28/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit


class LoginSignUpVC: UIViewController {
    
    var addingExistingUser = false
    var createNewUser = false
    var logInExistingUser = false
    
    var userType: UserType!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(userType)

    }
    

}
