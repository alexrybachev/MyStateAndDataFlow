//
//  UserManager.swift
//  MyStateAndDataFlow
//
//  Created by Aleksandr Rybachev on 10.06.2021.
//

import Combine

class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
    
//    @Published var isRegister = false
//    var name = ""
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
