//
//  LegacyViewControllerWrapper.swift
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 01/09/2024.
//

import Foundation
import SwiftUI
import UIKit

struct LegacyViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UserInterfaceController {
        return UserInterfaceController()
    }

    func updateUIViewController(_ uiViewController: UserInterfaceController, context: Context) {
        // Nothing to update for now
    }
}
