//
//  UserInterfaceController.swift
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 01/09/2024.
//

import Foundation
import UIKit

class UserInterfaceController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let apiManager = ApiManager()
        apiManager.fetchDataFromAPI()
        
        // UI setup
        let label = UILabel()
        label.text = "Data fetched, check the console."
        label.textAlignment = .center
        label.frame = self.view.bounds
        self.view.addSubview(label)
    }
}
