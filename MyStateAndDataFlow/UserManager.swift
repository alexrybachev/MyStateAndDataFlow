//
//  UserManager.swift
//  MyStateAndDataFlow
//
//  Created by Aleksandr Rybachev on 10.06.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
