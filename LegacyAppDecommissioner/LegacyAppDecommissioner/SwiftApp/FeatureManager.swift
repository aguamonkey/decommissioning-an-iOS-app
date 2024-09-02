//
//  FeatureManager.swift
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 02/09/2024.
//

import Foundation

class FeatureManager {
    static let shared = FeatureManager()

    private init() {}

    var isNewFeatureEnabled: Bool {
        // This would typically be based on a server response or configuration
        return false
    }
}
