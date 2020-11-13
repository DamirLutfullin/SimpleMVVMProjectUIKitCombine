//
//  ProfileCellViewModel.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 13.11.2020.
//

import Foundation

protocol ProfileCellViewModelProtocol {
    var fullname: String { get }
    var age: String { get }
}

class ProfileCellViewModel: ProfileCellViewModelProtocol {
    
    private var profile: Profile
    
    var fullname: String {
        get {
            return profile.name + " " + profile.lastname
        }
    }
    var age: String {
        get {
            return profile.age.description
        }
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
