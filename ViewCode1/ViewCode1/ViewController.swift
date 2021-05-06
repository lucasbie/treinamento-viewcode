//
//  ViewController.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 04/05/21.
//

import UIKit

protocol displayDelegateProtocol {
    func pushViewController(text: String?)
    func alertViewController()
}

class ViewController: UIViewController {
    
    // MARK: Overrides
    
    override func loadView() {
        let myView = MyView()
        myView.displayDelegate = self
        view = myView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: Extensions

extension ViewController : displayDelegateProtocol {
    func alertViewController() {
        let alert = UIAlertController(title: "Ops!", message: "É necessário preencher nome", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func pushViewController(text: String?) {
        let controller = DisplayNameViewController()
        controller.text = text
        navigationController?.pushViewController(controller, animated: true)
    }
}
