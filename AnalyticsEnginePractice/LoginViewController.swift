//
//  LoginViewController.swift
//  AnalyticsEnginePractice
//
//  Created by Ryan on 2020/4/28.
//  Copyright © 2020 Hanyu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

	private let analyticeEngine = CloudKitAnalyticsEngine()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		analyticeEngine.log(event: LoginEvent.screenViewed)
    }
	
	func loginButtonPress() {
		
		analyticeEngine.log(event: LoginEvent.loginAttempted)

		let result = true // A callback closure.
		switch result {
		case true:
			analyticeEngine.log(event: LoginEvent.loginSuccess)
		case false:
			analyticeEngine.log(event: LoginEvent.loginFailed(reason: "reason"))
		}
	}
}
