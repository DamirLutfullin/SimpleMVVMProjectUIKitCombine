//
//  ProfileViewModel.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 13.11.2020.
//

import Foundation

protocol ProfileViewModelProtocol {
    var numberOfRowsInSection: Int { get }
    func cellViewModel(indexPath: IndexPath) -> ProfileCellViewModelProtocol?
}

class ViewModel: ProfileViewModelProtocol {
    private let profiles = [Profile(name: "Fee", lastname: "Foo", age: 42)]
    var numberOfRowsInSection: Int {
        return profiles.count
    }
    
    func cellViewModel(indexPath: IndexPath) -> ProfileCellViewModelProtocol? {
        let profile = profiles[indexPath.row]
        return ProfileCellViewModel(profile: profile)
    }
}
