//
//  UserData.swift
//  Carbon-Clone
//
//  Created by mac on 08/12/2021.
//

import Foundation

struct User: Codable {
	let id: Int
	let firstName: String
	let middleName: String
	let surname: String
	let email: String
	let password: String
	let gender: String
	let phoneNumber: String
}
