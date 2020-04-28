//
//  MyAccountViewController.swift
//  AnalyticsEnginePractice
//
//  Created by Ryan on 2020/4/28.
//  Copyright © 2020 Hanyu. All rights reserved.
//

import UIKit

class MyAccountViewController: UIViewController {

	private let analyticsEngine = CloudKitAnalyticsEngine()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		let event = MyAccountEvent()
		event.name = "screenViewed"
		event.metadata = [:]
		analyticsEngine.log(event: event)
    }
	
	@objc
	func changeNameButtonPress(_ sender: Any) {
		let event = MyAccountEvent()
		event.name = "changeNameSelected"
		event.metadata = [:]
		analyticsEngine.log(event: event)
	}
}
