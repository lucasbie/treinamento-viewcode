//
//  MyView.swift
//  ViewCode1
//
//  Created by Lucas Alcalde Bie da Silva on 04/05/21.
//

import UIKit

class MyView: UIView {
    
    // MARK: - Public properties
    
    weak var displayDelegate: displayDelegateProtocol?
    
    // MARK: - Outlets

    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Nome:"
        titleLabel.numberOfLines = 0
        titleLabel.backgroundColor = .blue
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Digite seu nome aqui"
        textField.backgroundColor = .green
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Ok", for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
    
    // MARK: Private methods
    
    @objc
    private func buttonAction(sender: UIButton?) {
        guard let text = textField.text else { return }
        
        if text.isEmpty {
            displayDelegate?.alertViewController()
            return
        }
        displayDelegate?.pushViewController(text: text)
        textField.text = ""
    }
    
    private func setupElements() {
        backgroundColor = .red
        addSubview(titleLabel)
        addSubview(textField)
        addSubview(button)
    }
    
    private func setupConsttaints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 240),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
        ])
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 48),
            textField.heightAnchor.constraint(equalToConstant: 35),
            textField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 24),
            textField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: -24),
            textField.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -24)
        ])
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: textField.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: textField.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}
