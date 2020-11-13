//
//  DetailViewModel.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 14.11.2020.
//

import Foundation


protocol DetailViewModelProtocol {
    var description: String { get set }
}

class DetailViewModel: DetailViewModelProtocol {
    var description: String
    
    private var profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
        self.description = profile.name + " " + profile.lastname
     }
}
