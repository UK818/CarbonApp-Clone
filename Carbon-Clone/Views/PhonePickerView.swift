//
//  PhonePickerView.swift
//  Carbon-Clone
//
//  Created by mac on 10/12/2021.
//

import UIKit
class PhonePickerView : UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {
	var pickerData : [String]!
	var pickerTextField : UITextField!
	
	let phoneModel = PhoneNumberModel()
	
	init(pickerData: [String], dropdownField: UITextField) {
		
		super.init(frame: CGRect.zero)
		
		self.pickerData = pickerData
		self.pickerTextField = dropdownField
		
		self.delegate = self
		self.dataSource = self
		
		DispatchQueue.main.async {
			if pickerData.count > 0 {
				self.pickerTextField.isEnabled = true
			} else {
				self.pickerTextField.text = nil
				self.pickerTextField.isEnabled = false
			}
		}
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return pickerData.count
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return pickerData[row]
	}
	
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		
		if pickerData[row] == "Nigeria" {
			phoneModel.countryCodeLabel.text = "+234"
			phoneModel.textField.ImageIconRight(UIImage(named: "nig")!)
		} else if pickerData[row] == "Ghana" {
			phoneModel.countryCodeLabel.text = "+234"
			phoneModel.textField.ImageIconRight(UIImage(named: "ghn")!)
		} else if pickerData[row] == "UAE" {
			phoneModel.countryCodeLabel.text = "+94"
			phoneModel.textField.ImageIconRight(UIImage(named: "uae")!)
		}
		
		pickerTextField.resignFirstResponder()
		pickerTextField.endEditing(true)

	}

}
