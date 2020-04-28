//
//  LoginEvent.swift
//  AnalyticsEnginePractice
//
//  Created by Ryan on 2020/4/28.
//  Copyright © 2020 Hanyu. All rights reserved.
//

import Foundation

enum LoginEvent: AnalyticsEvent {
	
	case screenViewed
	case loginAttempted
    case loginFailed(reason: String)
	case loginSuccess
	
	var name: String {
		switch self {
		case .screenViewed:
			return "screenViewed"
		case .loginAttempted:
			return "loginAttempted"
		case .loginFailed:
			return "loginFailed"
		case .loginSuccess:
			return "loginSuccess"
		}
	}
	
	var metadata: [String : String] {
		switch self {
		case .screenViewed:
			return [:]
		case .loginAttempted:
			return [:]
		case .loginFailed(let reason):
			return ["reason": reason]
		case .loginSuccess:
			return [:]
		}
	}
}
