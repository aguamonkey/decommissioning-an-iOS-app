//
//  VersionedApiManager.swift
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 02/09/2024.
//

import Foundation

class VersionedApiManager {

    enum ApiVersion {
        case v1
        case v2
    }

    var currentVersion: ApiVersion = .v1

    func fetchData() {
        switch currentVersion {
        case .v1:
            print("Fetching data using API v1...")
            // Implement the old API call
        case .v2:
            print("Fetching data using API v2...")
            // Implement the new API call
        }
    }

    func upgradeToV2() {
        currentVersion = .v2
        print("Upgraded to API v2.")
    }
}

// Usage example
//let apiManager = VersionedApiManager()
//apiManager.fetchData()
//apiManager.upgradeToV2()
//apiManager.fetchData()
