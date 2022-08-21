//
//  ThirdViewController.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    var viewModel: ThirdViewModel?
    @IBOutlet weak var backButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        viewModel?.goToFirstView()
    }
}
