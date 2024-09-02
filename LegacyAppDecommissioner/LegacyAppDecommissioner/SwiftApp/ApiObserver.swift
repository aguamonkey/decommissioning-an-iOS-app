//
//  ApiObserver.swift
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 02/09/2024.
//

import Foundation

extension Notification.Name {
    static let apiWillBeDecommissioned = Notification.Name("apiWillBeDecommissioned")
}

class ApiObserver {
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleApiDecommissioning), name: .apiWillBeDecommissioned, object: nil)
    }

    @objc private func handleApiDecommissioning() {
        print("API is being decommissioned, handling shutdown...")
        // Handle any necessary cleanup or UI updates here
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

// Simulate decommissioning
func decommissionApi() {
    NotificationCenter.default.post(name: .apiWillBeDecommissioned, object: nil)
}

// Usage example
//let observer = ApiObserver()
//decommissionApi()
