//
//  viewSetup.swift
//  Carbon-Clone
//
//  Created by mac on 07/12/2021.
//

import Foundation
import UIKit

class ViewModelLayout {
		
	var welcomeMsg: UILabel = {
		let msg = UILabel()
		msg.translatesAutoresizingMaskIntoConstraints = false
		msg.text = """
		Let's set things up. Please fill out these basic details
		to get started
		"""
		msg.font = UIFont.systemFont(ofSize: 12)
		msg.textAlignment = .center
		msg.numberOfLines = 2
		return msg
	}()
	
	var errorMsg: UILabel = {
		let msg = UILabel()
		msg.translatesAutoresizingMaskIntoConstraints = false
		msg.textAlignment = .center
		msg.numberOfLines = 1
		msg.font = UIFont.systemFont(ofSize: 12)
		msg.textColor = .red
		return msg
	}()
	
	let scrollView: UIScrollView = {
		let scrollView = UIScrollView()
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		scrollView.isScrollEnabled = true
		return scrollView
	}()
	
	let scrollViewContainer: UIStackView = {
		let view = UIStackView()
		view.axis = .vertical
		view.spacing = 20
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	var txtLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = """
		By continuing, you accept our Terms of service
		& Privacy policy
		"""
		label.textAlignment = .center
		label.numberOfLines = 2
		label.font = UIFont.boldSystemFont(ofSize: 12)
		return label
	}()
	
	var createBtn: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.setTitle("Create account", for: .normal)
		btn.setTitleColor(.white, for: .normal)
		btn.backgroundColor = UIColor(named: "primaryColor")
		btn.layer.cornerRadius = 5
		return btn
	}()
		
}
