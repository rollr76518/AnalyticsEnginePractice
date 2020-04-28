//
//  MessageListActionEvents.swift
//  AnalyticsEnginePractice
//
//  Created by Ryan on 2020/4/28.
//  Copyright © 2020 Hanyu. All rights reserved.
//

import Foundation

struct MessageListActionEvents: AnalyticsEvent {
	
	enum ActionType: String {
		case selected = "itemSelected"
		case deleted = "itemDeleted"
	}
	
	let name: String = "messageListAction"
	var metadata: [String : String] {
		return ["itemName":  itemName,
				"action": action.rawValue]
	}
	
	let itemName: String
	let action: ActionType
	
	init(itemName: String, action: ActionType) {
		self.itemName = itemName
		self.action = action
	}
}
