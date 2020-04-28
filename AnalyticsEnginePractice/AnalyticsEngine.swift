//
//  AnalyticsEngine.swift
//  AnalyticsEnginePractice
//
//  Created by Ryan on 2020/4/28.
//  Copyright © 2020 Hanyu. All rights reserved.
//

import Foundation

protocol AnalyticsEvent {
	
	var name: String { get }
	var metadata: [String: String] { get }
}

protocol AnalyticsEngine {
	
	func log(event: AnalyticsEvent)
}
