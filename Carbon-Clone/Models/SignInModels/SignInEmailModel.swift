//
//  SignInEmailModel.swift
//  Carbon-Clone
//
//  Created by mac on 09/12/2021.
//

import Foundation
import UIKit


class SignInEmailModel {
	
	let label: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Email"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return label
	}()
	
	let textField: UITextField = {
		let txtField = UITextField()
		txtField.translatesAutoresizingMaskIntoConstraints = false
		txtField.backgroundColor = UIColor(white: 0.9, alpha: 1)
		txtField.layer.cornerRadius = 5
		txtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
		return txtField
	}()
	
	let stackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.alignment = UIStackView.Alignment.fill
		stackView.layer.cornerRadius = 5
		stackView.backgroundColor = UIColor(white: 0.9, alpha: 1)
		stackView.isLayoutMarginsRelativeArrangement = true
		stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
		return stackView
	}()
	
}
