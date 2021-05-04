//
//  MyView.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 04/05/21.
//

import UIKit

class MyView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
