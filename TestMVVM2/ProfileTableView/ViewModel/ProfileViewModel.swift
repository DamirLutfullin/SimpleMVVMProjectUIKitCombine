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
    
    func viewModelForSelectedRow() -> DetailViewModel?
    func selectRow(indexPath: IndexPath)
}

class ViewModel: ProfileViewModelProtocol {
  
    private let profiles = [Profile(name: "Fee", lastname: "Foo", age: 42),
                            Profile(name: "Bar", lastname: "Baz", age: 23),
                            Profile(name: "Fee", lastname: "Foo", age: 42)]
    
    private var seletedIndexPath: IndexPath?
    
    var numberOfRowsInSection: Int {
        return profiles.count
    }
    
    func cellViewModel(indexPath: IndexPath) -> ProfileCellViewModelProtocol? {
        let profile = profiles[indexPath.row]
        return ProfileCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModel? {
        guard let inexPath = seletedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[inexPath.row])
    }
    
    func selectRow(indexPath: IndexPath) {
        self.seletedIndexPath = indexPath
    }
    
}
