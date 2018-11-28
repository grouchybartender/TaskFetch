//
//  SessionManager.swift
//  TaskFetch
//
//  Created by Jonathan Compton on 11/28/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import Foundation

class SessionManager {
    
    var isLoggedIn = false
    
    var currentUser: LocalUser?
    
    private init(){}
    
    static let shared = SessionManager()
    
    func logUserOut() {
        
    }
}
