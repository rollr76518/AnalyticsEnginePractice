//
//  CloudKitAnalyticsEngine.swift
//  AnalyticsEnginePractice
//
//  Created by Ryan on 2020/4/28.
//  Copyright © 2020 Hanyu. All rights reserved.
//

import CloudKit

class CloudKitAnalyticsEngine {
	
	private let database: CKDatabase
	
	init(database: CKDatabase = CKContainer.default().publicCloudDatabase) {
		self.database = database
	}
}

extension CloudKitAnalyticsEngine: AnalyticsEngine {
	
	func log(event: AnalyticsEvent) {
		let record = CKRecord(recordType: "AnalyticsEvent.\(event.name)")
		
		for (key, value) in event.metadata {
			record[key] = value as NSString
		}
		
		database.save(record) { _, _ in
			// We treat this as a fire-and-forget type operation
		}
	}
}
