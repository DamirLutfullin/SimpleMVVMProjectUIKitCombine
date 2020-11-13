//
//  ViewController.swift
//  TestMVVM2
//
//  Created by Damir Lutfullin on 13.11.2020.
//

import UIKit

struct Profile {
    let name: String
    let lastname: String
    let age: Int
}

class ViewController: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.nameLabel.text = profile.name
            self.lastLabel.text = profile.lastname
            self.ageLabel.text = profile.age.description
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        profile = Profile(name: "IIIIIgor'", lastname: "Da mama", age: 33)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.profile = Profile(name: "AAA", lastname: "Foo", age: 42)
        }
    }


}

