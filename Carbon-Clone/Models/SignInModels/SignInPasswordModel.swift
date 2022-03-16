//
//  SignInPasswordModel.swift
//  Carbon-Clone
//
//  Created by mac on 09/12/2021.
//

import Foundation
import UIKit


class SignInPasswordModel {
	
	let textField: UITextField = {
		let txtField = UITextField()
		txtField.translatesAutoresizingMaskIntoConstraints = false
		txtField.layer.cornerRadius = 5
		txtField.isSecureTextEntry = true
		txtField.widthAnchor.constraint(lessThanOrEqualToConstant: 180).isActive = true
		txtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
		return txtField
	}()
	
	let button: UIButton = {
		let btn = UIButton()
		btn.setTitleColor(UIColor(named: "primaryColor"), for: .normal)
		btn.setTitle("Forgot password?", for: .normal)
		btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.widthAnchor.constraint(equalToConstant: 120).isActive = true
		return btn
	}()
	
	let stackView:UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.horizontal
		stackView.distribution = UIStackView.Distribution.fill
		stackView.alignment = UIStackView.Alignment.center
		stackView.layer.cornerRadius = 5
		stackView.backgroundColor = UIColor(white: 0.9, alpha: 1)
		stackView.isLayoutMarginsRelativeArrangement = true
		stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
		return stackView
	}()
	
	let label: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Password"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return label
	}()
	
}
