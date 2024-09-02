//
//  ModernApiManager.swift
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 02/09/2024.
//

import Foundation

class ModernApiManager {

    @available(*, deprecated, message: "This method is deprecated. Use fetchDataNewMethod() instead.")
    func fetchDataOldMethod() {
        print("Fetching data using the old method...")
    }

    func fetchDataNewMethod() {
        print("Fetching data using the new method...")
    }
}
