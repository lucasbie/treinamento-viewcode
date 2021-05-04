//
//  ViewController.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 04/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        let myView = MyView()
        
        view = myView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

