//
//  DisplayNameViewController.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 06/05/21.
//

import UIKit

class DisplayNameViewController: UIViewController {
    
    // MARK: - Public properties

    var text: String?
    
    // MARK: Overrides
    
    override func loadView() {
        let displayNameView = DisplayNameView()
        displayNameView.setupText(text: text)
        view = displayNameView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
