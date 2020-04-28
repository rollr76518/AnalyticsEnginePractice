//
//  MessageListViewController.swift
//  AnalyticsEnginePractice
//
//  Created by Ryan on 2020/4/28.
//  Copyright © 2020 Hanyu. All rights reserved.
//

import UIKit

class MessageListViewController: UIViewController {
	
	private let tableView = UITableView(frame: .zero) //TODO: DataSoure and Delegate...
	
	private let analytics = CloudKitAnalyticsEngine()
	
	let data: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
		
		analytics.log(event: MessageListScreenEvents())
    }
}

extension MessageListViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		return cell
	}
	
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		let item = data[indexPath.row]

		switch editingStyle {
		case .delete:
			analytics.log(event: MessageListActionEvents(itemName: item, action: .deleted))
		default:
			break
		}
	}
}

extension MessageListViewController: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let item = data[indexPath.row]
		analytics.log(event: MessageListActionEvents(itemName: item, action: .selected))
	}
}
