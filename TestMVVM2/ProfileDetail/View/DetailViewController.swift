//
//  DetailViewController.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 14.11.2020.
//

import UIKit
import Combine

class DetailViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var viewModel: DetailViewModel!
    
    var cancelebleSet = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bidning()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.viewModel.description = "1"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.viewModel.description = "2"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            self.viewModel.description = "3"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
            self.viewModel.description = "4"
        }
    }
    
    func bidning() {
        viewModel.$description
            .sink { [weak self ] in
                self?.label.text = $0 }
            .store(in: &cancelebleSet)
    }
}
