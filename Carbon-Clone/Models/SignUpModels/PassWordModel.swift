//
//  PassWordModel.swift
//  Carbon-Clone
//
//  Created by mac on 08/12/2021.
//

import UIKit

class PassWordModel {
	
	var passwordLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Password"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return label
	}()
	
	var passwordTextField: UITextField = {
		let txtField = UITextField()
		txtField.translatesAutoresizingMaskIntoConstraints = false
		txtField.layer.borderWidth = 0.5
		txtField.layer.cornerRadius = 5
		txtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
		txtField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
		txtField.isSecureTextEntry = true
		return txtField
	}()
	
	var passwordStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		return stackView
	}()
	
}
