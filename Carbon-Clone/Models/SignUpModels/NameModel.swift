//
//  NameModel.swift
//  Carbon-Clone
//
//  Created by mac on 08/12/2021.
//

import UIKit

class NameModel {
	
	var fNameLabel: UILabel = {
		let fNameLabel = UILabel()
		fNameLabel.translatesAutoresizingMaskIntoConstraints = false
		fNameLabel.text = "First name"
		fNameLabel.textAlignment = .left
		fNameLabel.font = UIFont.boldSystemFont(ofSize: 14)
		fNameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return fNameLabel
	}()
	
	var fNameTextField: UITextField = {
		let fNameTxtField = UITextField()
		fNameTxtField.translatesAutoresizingMaskIntoConstraints = false
		fNameTxtField.layer.cornerRadius = 5
		fNameTxtField.layer.borderWidth = 0.5
		fNameTxtField.autocorrectionType = .no
		fNameTxtField.widthAnchor.constraint(lessThanOrEqualToConstant: 160).isActive = true
		fNameTxtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
		fNameTxtField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
		return fNameTxtField
	}()
	
	var fNameStackView: UIStackView = {
		let fNameStackView = UIStackView()
		fNameStackView.translatesAutoresizingMaskIntoConstraints = false
		fNameStackView.axis = NSLayoutConstraint.Axis.vertical
		fNameStackView.distribution = UIStackView.Distribution.equalCentering
		fNameStackView.heightAnchor.constraint(equalToConstant: 75).isActive = true
		return fNameStackView
	}()
	
	var mNameLabel: UILabel = {
		let mNameLabel = UILabel()
		mNameLabel.translatesAutoresizingMaskIntoConstraints = false
		mNameLabel.text = "Middle name"
		mNameLabel.textAlignment = .left
		mNameLabel.font = UIFont.boldSystemFont(ofSize: 14)
		mNameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
		return mNameLabel
	}()
	
	var mNameTextField: UITextField = {
		let mNameTxtField = UITextField()
		mNameTxtField.translatesAutoresizingMaskIntoConstraints = false
		mNameTxtField.layer.cornerRadius = 5
		mNameTxtField.layer.borderWidth = 0.5
		mNameTxtField.autocorrectionType = .no
		mNameTxtField.widthAnchor.constraint(lessThanOrEqualToConstant: 160).isActive = true
		mNameTxtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
		mNameTxtField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
		return mNameTxtField
	}()
	
	var mNameStackView: UIStackView = {
		let mNameStackView = UIStackView()
		mNameStackView.translatesAutoresizingMaskIntoConstraints = false
		mNameStackView.axis = NSLayoutConstraint.Axis.vertical
		mNameStackView.distribution = UIStackView.Distribution.equalCentering
		mNameStackView.heightAnchor.constraint(equalToConstant: 75).isActive = true
		return mNameStackView
	}()
	
	var nameStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = NSLayoutConstraint.Axis.horizontal
		stackView.distribution = UIStackView.Distribution.fillEqually
		stackView.alignment = UIStackView.Alignment.center
		stackView.spacing = 20
		return stackView
	}()
	
}
