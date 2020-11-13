//
//  DetailViewController.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 14.11.2020.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var viewModel: DetailViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = viewModel.description
    }
}
