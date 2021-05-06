//
//  DisplayNameView.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 06/05/21.
//

import UIKit

class DisplayNameView: UIView {
        
    // MARK: - Outlets

    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Nome"
        nameLabel.numberOfLines = 0
        nameLabel.backgroundColor = .blue
        nameLabel.textAlignment = .center
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return nameLabel
    }()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupElements()
        setupConsttaints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Public methods
    
    func setupText(text: String?) {
        nameLabel.text = text
    }
    
    // MARK: Private methods
    
    private func setupElements() {
        backgroundColor = .green
        addSubview(nameLabel)

    }
    
    private func setupConsttaints() {
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
        ])
    }
}
