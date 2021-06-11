//
//  DataManager.swift
//  MyStateAndDataFlow
//
//  Created by Aleksandr Rybachev on 10.06.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults.standard
    private let key = "userManager"
    
    private init() {}
    
    func saveUser(user: User) {
        guard let userData = try? JSONEncoder().encode(user) else { return }
        userDefaults.set(userData, forKey: key)
    }
    
    func loadUser() -> User {
        guard let userData = userDefaults.object(forKey: key) as? Data else { return User() }
        guard let user = try? JSONDecoder().decode(User.self, from: userData) else { return User() }
        return user
    }
    
    func deleteUser(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userDefaults.removeObject(forKey: key)
    }
    
}

