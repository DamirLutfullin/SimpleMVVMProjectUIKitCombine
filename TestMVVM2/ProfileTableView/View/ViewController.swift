//
//  ViewController.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 13.11.2020.
//

import UIKit

class ViewController: UITableViewController {
    
    var viewModel: ProfileViewModelProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = ViewModel()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileCell
        let cellViewModel = viewModel.cellViewModel(indexPath: indexPath)
        cell.viewModel = cellViewModel
        return cell
    }
}

