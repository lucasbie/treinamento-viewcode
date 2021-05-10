//
//  SecondViewController.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 10/05/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: Public properties
    
    var text: String = String()
    
    // MARK: Overrides
    
    override func loadView() {
        let myView = MyView()
        myView.setupLabel(text: text)
        view = myView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
