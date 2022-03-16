//
//  GenderModel.swift
//  Carbon-Clone
//
//  Created by mac on 08/12/2021.
//

import UIKit

class GenderModel {
	
	var genderLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Gender"
		label.textAlignment = .left
		label.font = UIFont.boldSystemFont(ofSize: 14)
		label.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return label
	}()
	
	var genderTextField: UITextField = {
		let txtField = UITextField()
		txtField.translatesAutoresizingMaskIntoConstraints = false
		txtField.layer.borderWidth = 0.5
		txtField.placeholder = "please select"
		txtField.layer.cornerRadius = 5
		txtField.loadDropdownData(data: ["Male", "Female"])
		txtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
		txtField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
		txtField.iconRight()
		return txtField
	}()
	
	var genderStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.vertical
		stackView.distribution = UIStackView.Distribution.equalCentering
		return stackView
	}()
	
}
