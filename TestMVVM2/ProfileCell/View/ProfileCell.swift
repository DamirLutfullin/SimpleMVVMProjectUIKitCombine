//
//  ProfileCell.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 13.11.2020.
//

import UIKit

class ProfileCell: UITableViewCell {
    @IBOutlet var name: UILabel!
    @IBOutlet var lastname: UILabel!
    @IBOutlet var age: UILabel!
    
    var viewModel: ProfileCellViewModelProtocol? {
        didSet {
            guard let viewModel = viewModel else { return }
            name.text = viewModel.fullname
            age.text = viewModel.age
        }
    }
    
}
